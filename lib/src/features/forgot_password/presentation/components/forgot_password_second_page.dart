import '../../../../app/imports.dart';
import '../../../../core/widgets/buttons/custom_back_button.dart';
import '../../../../core/widgets/buttons/custom_button.dart';

class ForgotPasswordSecondPage extends StatefulWidget {
  const ForgotPasswordSecondPage({
    super.key,
    required this.email,
    required this.pageController,
    required this.callback,
  });

  final String email;
  final PageController pageController;
  final VoidCallback callback;

  @override
  State<ForgotPasswordSecondPage> createState() => _ForgotPasswordSecondPageState();
}

class _ForgotPasswordSecondPageState extends State<ForgotPasswordSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFF1F5F9),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  child: Text(
                    'Проверьте почту',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  child: Text(
                    'Мы отправили письмо на почту ${widget.email}',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF757575),
                    ),
                  ),
                ),
                CustomButton(
                  title: 'Войти',
                  onTap: () {
                    widget.callback();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 8,
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        // TODO: implement
                      },
                      child: const Text(
                        'Отправить снова',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2CB1B9),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        CustomBackButton(pageController: widget.pageController),
      ],
    );
  }
}
