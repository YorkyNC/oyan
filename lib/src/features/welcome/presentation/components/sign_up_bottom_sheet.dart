import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/utils/validators/password_validator.dart';
import 'package:oyan/src/features/login/presentation/bloc/auth_bloc.dart';
import 'package:oyan/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';
import 'package:oyan/src/features/welcome/presentation/components/sign_in_bottom_sheet.dart';
import 'package:oyan/src/features/welcome/presentation/welcome_page.dart';

class SignUpBottomSheet extends StatefulWidget {
  const SignUpBottomSheet({super.key});

  @override
  State<SignUpBottomSheet> createState() => _SignUpBottomSheetState();
}

class _SignUpBottomSheetState extends State<SignUpBottomSheet> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final DioRestClient _dioClient = DioRestClient();
  final authBloc = getIt<AuthBloc>();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    if (_formKey.currentState?.validate() ?? false) {
      authBloc.add(
        AuthEvent.register(
          username: usernameController.text,
          email: emailController.text,
          password1: passwordController.text,
          password2: confirmPasswordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      builder: (context, state, bloc) {
        return state.maybeWhen(
          loading: () => _buildSignUpForm(context, isLoading: true),
          loaded: (viewModel) {
            if (viewModel.signupResponse != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackBar.show(
                    context: context,
                    title: 'Registration successful! Please check your email to verify your account.',
                    seconds: 3,
                    color: Colors.green,
                  ),
                );
              });
            }
            return _buildSignUpForm(context);
          },
          error: (message) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                CustomSnackBar.show(
                  context: context,
                  title: message,
                  seconds: 3,
                  color: Colors.red,
                ),
              );
            });
            return _buildSignUpForm(context);
          },
          orElse: () => _buildSignUpForm(context),
        );
      },
    );
  }

  Widget _buildSignUpForm(BuildContext context, {bool isLoading = false}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20,
        right: 20,
        top: 40,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff323232),
                    ),
                    cursorColor: context.colors.main,
                    controller: usernameController,
                    enabled: !isLoading,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffA2ADD0),
                      ),
                      errorStyle: GoogleFonts.openSans(
                        fontSize: 12,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  EmailTextFormField(
                    emailController: emailController,
                    enabled: !isLoading,
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
                    enabled: !isLoading,
                    labelText: 'Password',
                    validator: PasswordValidator.validate,
                  ),
                  const SizedBox(height: 8),
                  _buildPasswordRequirements(),
                  const SizedBox(height: 20),
                  PasswordTextFormField(
                    passwordController: confirmPasswordController,
                    isPasswordVisible: isConfirmPasswordVisible,
                    onPasswordVisibilityChanged: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    enabled: !isLoading,
                    labelText: 'Confirm Password',
                    validator: (value) {
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  _buildSignUpButton(isLoading: isLoading),
                  const SizedBox(height: 24),
                  _buildSignInText(context),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordRequirements() {
    final password = passwordController.text;
    final hasMinLength = password.length >= 8;
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasNumbers = password.contains(RegExp(r'[0-9]'));
    final hasSpecialChars = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    final isNotNumeric = !RegExp(r'^\d+$').hasMatch(password);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password Requirements:',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        _buildRequirementItem('At least 8 characters', hasMinLength),
        _buildRequirementItem('Contains uppercase letter', hasUppercase),
        _buildRequirementItem('Contains lowercase letter', hasLowercase),
        _buildRequirementItem('Contains number', hasNumbers),
        _buildRequirementItem('Contains special character', hasSpecialChars),
        _buildRequirementItem('Not entirely numeric', isNotNumeric),
      ],
    );
  }

  Widget _buildRequirementItem(String text, bool isMet) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Icon(
            isMet ? Icons.check_circle : Icons.circle_outlined,
            size: 12,
            color: isMet ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: isMet ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton({bool isLoading = false}) {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: isLoading ? null : _handleSignUp,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Text(
                      'Sign Up',
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

  Widget _buildSignInText(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'Already have an account?',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: const Color(0xff757575),
          ),
        ),
        const WidgetSpan(child: SizedBox(width: 14)),
        TextSpan(
          text: 'Sign In',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: context.colors.main,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pop();
              _showSignInBottomSheet(context);
            },
        ),
      ]),
    );
  }

  void _showSignInBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return const SignInBottomSheet();
      },
    );
  }
}
