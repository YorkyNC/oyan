import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart';
import 'package:oyan/src/core/exceptions/domain_exception.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/login/data/models/login_response.dart';
import 'package:oyan/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';
import 'package:oyan/src/features/welcome/presentation/components/forgot_password_bottom_sheet.dart';
import 'package:oyan/src/features/welcome/presentation/components/sign_up_bottom_sheet.dart';

class SignInBottomSheet extends StatefulWidget {
  const SignInBottomSheet({super.key});

  @override
  State<SignInBottomSheet> createState() => _SignInBottomSheetState();
}

class _SignInBottomSheetState extends State<SignInBottomSheet> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  final DioRestClient _dioClient = DioRestClient();
  bool _isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignIn() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter email and password')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      // First get CSRF token
      final tokenResult = await _dioClient.getCsrfToken();
      await tokenResult.fold(
        (failure) async {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to get CSRF token: ${failure.message}')),
          );
        },
        (csrfToken) async {
          // Set CSRF token in headers
          _dioClient.setCsrfToken(csrfToken);

          // Attempt login
          final loginResult = await _dioClient.login(
            emailController.text,
            passwordController.text,
          );

          loginResult.fold(
            (failure) {
              String errorMessage = 'Login failed';
              if (failure is NetworkException) {
                if (failure.message.contains('403')) {
                  // Clear the stored CSRF token and try again
                  _dioClient.st.deleteCsrfToken();
                  errorMessage = 'Session expired. Please try again.';
                  // Retry the login with a fresh token
                  _handleSignIn();
                } else {
                  errorMessage = failure.message;
                }
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(errorMessage)),
              );
              log('Login failed: $errorMessage');
            },
            (response) {
              try {
                log('Login Response: ${response.data}');
                if (response.statusCode == 403) {
                  // Clear the stored CSRF token and try again
                  _dioClient.st.deleteCsrfToken();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Session expired. Please try again.')),
                  );
                  // Retry the login with a fresh token
                  _handleSignIn();
                  return;
                }

                final loginResponse = LoginResponse.fromJson(response.data);
                if (loginResponse.status == 'success') {
                  context.push(RoutePaths.home);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(loginResponse.message ?? 'Login failed')),
                  );
                }
              } catch (e) {
                log('Error parsing login response: $e');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Error processing login response')),
                );
              }
            },
          );
        },
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20,
        right: 20,
        top: 40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmailTextFormField(
                  emailController: emailController,
                ),
                const SizedBox(height: 20),
                PasswordTextFormField(
                  passwordController: passwordController,
                  isPasswordVisible: isPasswordVisible,
                  onPasswordVisibilityChanged: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                const SizedBox(height: 20),
                _buildForgotPasswordButton(context),
                const SizedBox(height: 24),
                _buildSignInButton(),
                const SizedBox(height: 24),
                _buildSignUpText(context),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showForgotPasswordBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return const ForgotPasswordBottomSheet();
      },
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pop();
        _showForgotPasswordBottomSheet(context);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        'Forgot your password?',
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w400,
          color: context.colors.main,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: _handleSignIn,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Sign In',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpText(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'Need an account?',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: const Color(0xff757575),
          ),
        ),
        const WidgetSpan(child: SizedBox(width: 14)),
        TextSpan(
          text: 'Sign Up',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: context.colors.main,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pop();
              _showSignUpBottomSheet(context);
            },
        ),
      ]),
    );
  }

  void _showSignUpBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return const SignUpBottomSheet();
      },
    );
  }
}
