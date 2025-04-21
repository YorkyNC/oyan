import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/login/presentation/bloc/auth_bloc.dart';
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
  final authBloc = getIt<AuthBloc>();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Account created successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
                context.pop();
                context.pushReplacement(RoutePaths.welcome);
              });
            }
            return _buildSignUpForm(context);
          },
          error: (message) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
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
                enabled: !isLoading,
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
                enabled: !isLoading,
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
                enabled: !isLoading,
              ),
              const SizedBox(height: 24),
              _buildCreateAccountButton(isLoading: isLoading),
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

  Widget _buildCreateAccountButton({bool isLoading = false}) {
    return FilledButton(
      onPressed: isLoading
          ? null
          : () {
              if (_formKey.currentState?.validate() ?? false) {
                if (passwordController.text != repeatPasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Passwords do not match')),
                  );
                  return;
                }
                authBloc.add(AuthEvent.register(
                  username: usernameController.text,
                  email: emailController.text,
                  password1: passwordController.text,
                  password2: repeatPasswordController.text,
                ));
              }
            },
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xff6366F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
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
            text: 'By signing up, you acknowledge that you have read and understood, and agree to TextTool ',
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
