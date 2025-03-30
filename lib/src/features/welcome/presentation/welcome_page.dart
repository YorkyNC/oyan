import 'dart:developer';

import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/login/presentation/bloc/auth_bloc.dart';
import 'package:oyan/src/features/welcome/presentation/components/login_options_bottom_sheet.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final AuthBloc authBloc = getIt<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      listenWhen: (previous, current) {
        return current.maybeMap(
          loaded: (_) => true,
          error: (_) => true,
          orElse: () => false,
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          loaded: (viewModel) {
            log('CSRF token in welcome page: ${viewModel.csrfToken}', name: 'WELCOME_PAGE');
            if (viewModel.csrfToken.isNotEmpty) {
              _showLoginOptionsBottomSheet(context);
            }
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Failed to prepare login: $error')),
            );
          },
        );
      },
      builder: (context, state, bloc) {
        // Show loading indicator when getting CSRF token
        final bool isLoading = state.maybeMap(
          loading: (_) => true,
          orElse: () => false,
        );

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
                  if (isLoading)
                    const CircularProgressIndicator()
                  else
                    FilledButton(
                      onPressed: () => _handleGettingCSRF(context),
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
      },
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

  Future<void> _handleGettingCSRF(BuildContext context) async {
    authBloc.add(const AuthEvent.getCsrfToken());
  }
}
