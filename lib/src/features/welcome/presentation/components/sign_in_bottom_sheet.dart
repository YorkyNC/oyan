import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/login/presentation/bloc/auth_bloc.dart';
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
  final authBloc = getIt<AuthBloc>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignIn() async {
    authBloc.add(
      AuthEvent.login(
        username: emailController.text,
        password: passwordController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      builder: (context, state, bloc) {
        return state.maybeWhen(
          loading: () {
            return _buildLoadingState(context);
          },
          loaded: (viewModel) {
            debugPrint('Loaded state with viewModel: $viewModel');
            debugPrint('SignInResponse: ${viewModel.signInResponse}');

            if (viewModel.signInResponse != null) {
              // Check if token exists in the response
              final hasToken = viewModel.signInResponse?.token != null && viewModel.signInResponse!.token!.isNotEmpty;

              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (hasToken) {
                  // If there's a token, navigate to home
                  context.push(RoutePaths.home);
                } else {
                  // If no token, show an error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Authentication failed: No token received'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              });
            }
            return _buildLoginForm(context);
          },
          error: (message) {
            // Show error message to the user
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            });

            return _buildLoginForm(context);
          },
          orElse: () => _buildLoginForm(context),
        );
      },
    );
  }

  Widget _buildLoadingState(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const CircularProgressIndicator(),
                const SizedBox(height: 20),
                Text(
                  'Signing in...',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
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
