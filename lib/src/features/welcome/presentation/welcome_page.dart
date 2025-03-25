import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/app_images/image1.png',
              ),
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
                  color: const Color(
                    0xff8B8B8B,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: () {
                  showModalBottomSheet(
                    useSafeArea: true,
                    constraints: const BoxConstraints(),
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40.0,
                          horizontal: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            buttonOptions(
                              'assets/app_images/google.png',
                              'Continue with Google',
                              () {
                                context.pop();
                                showModalBottomSheet(
                                  constraints: const BoxConstraints(),
                                  useSafeArea: true,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.white,
                                  context: context,
                                  builder: (context) {
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
                                                  isPasswordVisible: false,
                                                ),
                                                const SizedBox(height: 20),
                                                InkWell(
                                                  onTap: () {},
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
                                                ),
                                                const SizedBox(height: 24),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: FilledButton(
                                                        onPressed: () {},
                                                        child: const Padding(
                                                          padding: EdgeInsets.all(12.0),
                                                          child: Text(
                                                            'Sign In',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 24),
                                                Text.rich(
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
                                                          showModalBottomSheet(
                                                              useSafeArea: true,
                                                              constraints: const BoxConstraints(),
                                                              backgroundColor: Colors.white,
                                                              context: context,
                                                              builder: (context) {
                                                                return const Placeholder();
                                                              });
                                                        },
                                                    ),
                                                  ]),
                                                ),
                                                const SizedBox(height: 40),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            buttonOptions(
                              'assets/app_images/mail.png',
                              'Continue with Email',
                              () {},
                            ),
                          ],
                        ),
                      );
                    },
                  );
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

  OutlinedButton buttonOptions(
    String path,
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
            path,
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
}
