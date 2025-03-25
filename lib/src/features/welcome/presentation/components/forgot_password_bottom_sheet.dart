import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:oyan/src/features/welcome/presentation/components/verification_code_bottom_sheet.dart';

class ForgotPasswordBottomSheet extends StatefulWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  State<ForgotPasswordBottomSheet> createState() => _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState extends State<ForgotPasswordBottomSheet> {
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      // Send reset code to email
      context.pop(); // Close the bottom sheet
      _showVerificationCodeBottomSheet(context, emailController.text);
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
                    'Forgot Password',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Enter your email address and we\'ll send you a verification code to reset your password.',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color(0xff757575),
                    ),
                  ),
                  const SizedBox(height: 24),
                  EmailTextFormField(
                    emailController: emailController,
                  ),
                  const SizedBox(height: 24),
                  _buildSubmitButton(),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: _handleSubmit,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Send Reset Code',
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

  void _showVerificationCodeBottomSheet(BuildContext context, String email) {
    showModalBottomSheet(
      isScrollControlled: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return VerificationCodeBottomSheet(email: email);
      },
    );
  }
}
