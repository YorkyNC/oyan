import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart';
import 'package:oyan/src/core/exceptions/domain_exception.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/login/data/models/signup_response.dart';
import 'package:oyan/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';

class SignUpBottomSheet extends StatefulWidget {
  const SignUpBottomSheet({super.key});

  @override
  State<SignUpBottomSheet> createState() => _SignUpBottomSheetState();
}

class _SignUpBottomSheetState extends State<SignUpBottomSheet> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isRepeatPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final DioRestClient _dioClient = DioRestClient();
  bool _isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (passwordController.text != repeatPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
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
            log('Failed to get CSRF token: ${failure.message}');
          },
          (csrfToken) async {
            // Attempt signup
            final signupResult = await _dioClient.signup(
              usernameController.text,
              emailController.text,
              passwordController.text,
              repeatPasswordController.text,
            );

            signupResult.fold(
              (failure) {
                String errorMessage = 'Signup failed';
                if (failure is NetworkException) {
                  if (failure.message.contains('403')) {
                    // Clear the stored CSRF token and try again
                    _dioClient.st.deleteCsrfToken();
                    errorMessage = 'Session expired. Please try again.';
                    // Retry the signup with a fresh token
                    _handleSignUp();
                  } else {
                    errorMessage = failure.message;
                  }
                }

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(errorMessage)),
                );
                log('Signup failed: $errorMessage');
              },
              (response) {
                try {
                  log('Signup Response: ${response.data}');
                  if (response.statusCode == 403) {
                    // Clear the stored CSRF token and try again
                    _dioClient.st.deleteCsrfToken();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Session expired. Please try again.')),
                    );
                    // Retry the signup with a fresh token
                    _handleSignUp();
                    return;
                  }

                  final signupResponse = SignupResponse.fromJson(response.data);
                  if (signupResponse.status == 'success') {
                    // Show success message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Account created successfully')),
                    );
                    log('Account created successfully');
                    // Navigate to login
                    context.pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(signupResponse.message ?? 'Signup failed')),
                    );
                    log('Signup failed: ${signupResponse.message}');
                  }
                } catch (e) {
                  log('Error parsing signup response: $e');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Error processing signup response')),
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
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildUsernameField(),
              const SizedBox(height: 16),
              EmailTextFormField(
                emailController: emailController,
              ),
              const SizedBox(height: 16),
              PasswordTextFormField(
                passwordController: passwordController,
                isPasswordVisible: isPasswordVisible,
                onPasswordVisibilityChanged: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 16),
              PasswordTextFormField(
                passwordController: repeatPasswordController,
                isPasswordVisible: isRepeatPasswordVisible,
                confirm: true,
                errorText: 'Пожалуйста, повторите пароль',
                onPasswordVisibilityChanged: () {
                  setState(() {
                    isRepeatPasswordVisible = !isRepeatPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 24),
              _buildCreateAccountButton(),
              const SizedBox(height: 16),
              _buildTermsText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return TextFormField(
      controller: usernameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Пожалуйста, введите имя пользователя';
        }
        return null;
      },
      cursorHeight: 24,
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: const Color(0xff323232),
      ),
      cursorColor: context.colors.main,
      decoration: InputDecoration(
        labelText: 'username',
        labelStyle: GoogleFonts.openSans(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: const Color(0xffA2ADD0),
        ),
        errorStyle: GoogleFonts.openSans(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Colors.red,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.main,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return FilledButton(
      onPressed: _isLoading ? null : _handleSignUp,
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xff6366F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _isLoading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                'Create account',
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }

  Widget _buildTermsText() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you acknowledge that you have read and understood, and agree to TextTool  ',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Terms of Service',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: context.colors.main,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Add terms of service navigation
              },
          ),
          TextSpan(
            text: ' and ',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: context.colors.main,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Add privacy policy navigation
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
