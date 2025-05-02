import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
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
            if (viewModel.csrfToken.isNotEmpty) {
              _showLoginOptionsBottomSheet(context);
            }
          },
          loading: () {
            ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackBar.show(
                title: 'Wait please...',
                seconds: 3,
                context: context,
                color: context.colors.success500,
              ),
            );
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackBar.show(
                title: error.toString(),
                seconds: 3,
                context: context,
                color: context.colors.error500,
              ),
            );
          },
        );
      },
      builder: (context, state, bloc) {
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
                    context.loc.welcomeToOyan,
                    style: GoogleFonts.openSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    context.loc.discoverTheWorldOfBooksAndNewIdeas,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                        child: Text(
                          context.loc.getStarted,
                          style: const TextStyle(fontSize: 16),
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

class CustomSnackBar {
  static SnackBar show({
    required String title,
    required int seconds,
    required BuildContext context,
    required Color color,
  }) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      backgroundColor: color,
      duration: Duration(seconds: seconds),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: context.typography.textsmSemibold.copyWith(
                color: context.colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(
            context.icons.delete_1__remove_add_button_buttons_delete_cross_x_mathematics_multiply_math,
            color: context.colors.white,
          ),
        ],
      ),
    );
  }
}
//flutter pub run intl_utils:generate
