// 1. First, update the _buildForgotPasswordButton method:

import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';

class ResetPasswordBottomSheet extends StatefulWidget {
  final String email;
  final String code;

  const ResetPasswordBottomSheet({
    super.key,
    required this.email,
    required this.code,
  });

  @override
  State<ResetPasswordBottomSheet> createState() => _ResetPasswordBottomSheetState();
}

class _ResetPasswordBottomSheetState extends State<ResetPasswordBottomSheet> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      if (passwordController.text != confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
        );
        return;
      }
      context.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password reset successful')),
      );
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
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Create a new password for your account',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color(0xff757575),
                    ),
                  ),
                  const SizedBox(height: 24),
                  PasswordTextFormField(
                    passwordController: passwordController,
                    isPasswordVisible: isPasswordVisible,
                    onPasswordVisibilityChanged: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    // labelText: 'New Password',
                  ),
                  const SizedBox(height: 20),
                  PasswordTextFormField(
                    passwordController: confirmPasswordController,
                    isPasswordVisible: isConfirmPasswordVisible,
                    onPasswordVisibilityChanged: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    // labelText: 'Confirm Password',
                  ),
                  const SizedBox(height: 24),
                  _buildResetButton(),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildResetButton() {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: _handleSubmit,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Reset Password'),
            ),
          ),
        ),
      ],
    );
  }
}
