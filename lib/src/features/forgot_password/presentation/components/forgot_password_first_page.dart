import '../../../../app/imports.dart';
import '../../../../core/widgets/buttons/custom_back_button.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../login/presentation/components/email_text_form_field.dart';

class ForgotPasswordFirstPage extends StatefulWidget {
  const ForgotPasswordFirstPage({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.pageController,
    required this.callback,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final PageController pageController;
  final VoidCallback callback;

  @override
  State<ForgotPasswordFirstPage> createState() => _ForgotPasswordFirstPageState();
}

class _ForgotPasswordFirstPageState extends State<ForgotPasswordFirstPage> {
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
            child: Form(
              key: widget.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 4,
                    ),
                    child: Text(
                      'Восстановление пароля',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 4,
                    ),
                    child: Text(
                      'Введите вашу привязанную почту для получения письма',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                  EmailTextFormField(
                    emailController: widget.emailController,
                  ),
                  CustomButton(
                    title: 'Отправить письмо',
                    onTap: widget.callback,
                  ),
                ],
              ),
            ),
          ),
        ),
        CustomBackButton(pageController: widget.pageController),
      ],
    );
  }
}
