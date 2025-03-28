import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart';
import 'package:oyan/src/features/welcome/presentation/components/login_options_bottom_sheet.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final DioRestClient _dioClient = DioRestClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/app_images/image1.png'),
              const SizedBox(height: 40),
              Text(
                'Welcome to OYAN!',
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Discover the world of books and new ideas',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff8B8B8B),
                ),
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: () {
                  _showLoginOptionsBottomSheet(context);
                  // _handleGettingCSRF(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                  child: Text(
                    'Get started',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showLoginOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      constraints: const BoxConstraints(),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => const LoginOptionsBottomSheet(),
    );
  }

  // Future<void> _handleGettingCSRF(BuildContext context) async {
  //   // First get CSRF token
  //   final tokenResult = await _dioClient.getCsrfToken();
  //   tokenResult.fold(
  //     (failure) {
  //       // Show error message
  //       log('Failed to get CSRF token: ${failure.message}');
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Failed to get CSRF token: ${failure.message}')),
  //       );
  //     },
  //     (csrfToken) async {
  //       // Now proceed with login using the token
  //       // TODO: Implement login with token
  //       log('CSRF token: $csrfToken');
  //       context.push(RoutePaths.home);
  //     },
  //   );
  // }
}
