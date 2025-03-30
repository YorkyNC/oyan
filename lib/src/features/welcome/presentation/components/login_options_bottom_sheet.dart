import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/welcome/presentation/components/sign_in_bottom_sheet.dart';

class LoginOptionsBottomSheet extends StatelessWidget {
  const LoginOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildLoginOption(
            context,
            'assets/app_images/google.png',
            'Continue with Google',
            () {
              context.pop();
              _showSignInBottomSheet(context);
            },
          ),
          const SizedBox(height: 20),
          _buildLoginOption(
            context,
            'assets/app_images/mail.png',
            'Continue with Email',
            () {
              context.pop();
              _showSignInBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLoginOption(
    BuildContext context,
    String iconPath,
    String title,
    VoidCallback onTap,
  ) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        side: const BorderSide(color: Color(0xFFD5D7DA)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  void _showSignInBottomSheet(BuildContext context) {
    showModalBottomSheet(
      constraints: const BoxConstraints(),
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => const SignInBottomSheet(),
    );
  }
}
