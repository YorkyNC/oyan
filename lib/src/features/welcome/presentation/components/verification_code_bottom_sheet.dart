import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/welcome/presentation/components/reset_password_bottom_sheet.dart';

class VerificationCodeBottomSheet extends StatefulWidget {
  final String email;

  const VerificationCodeBottomSheet({
    super.key,
    required this.email,
  });

  @override
  State<VerificationCodeBottomSheet> createState() => _VerificationCodeBottomSheetState();
}

class _VerificationCodeBottomSheetState extends State<VerificationCodeBottomSheet> {
  final List<TextEditingController> codeControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );
  final List<FocusNode> focusNodes = List.generate(
    4,
    (index) => FocusNode(),
  );
  bool saveCode = false;

  @override
  void dispose() {
    for (var controller in codeControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _handleSubmit() {
    final code = codeControllers.map((c) => c.text).join();
    if (code.length == 4) {
      // Verify code and navigate to reset password screen
      context.pop();
      _showResetPasswordBottomSheet(context, code);
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
                Text(
                  'Verification Code',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Enter the verification code we sent to your email',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xff757575),
                  ),
                ),
                const SizedBox(height: 24),
                _buildCodeInput(),
                const SizedBox(height: 24),
                _buildContinueButton(),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCodeInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFEEF0F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: codeControllers[index],
            focusNode: focusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.isNotEmpty && index < 3) {
                focusNodes[index + 1].requestFocus();
              }

              // Check if all fields are filled
              if (codeControllers.every((controller) => controller.text.isNotEmpty)) {
                _handleSubmit();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: _handleSubmit,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Continue',
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

  void _showResetPasswordBottomSheet(BuildContext context, String code) {
    showModalBottomSheet(
      isScrollControlled: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return ResetPasswordBottomSheet(email: widget.email, code: code);
      },
    );
  }
}
