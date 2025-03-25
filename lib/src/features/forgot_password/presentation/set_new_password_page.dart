import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
import 'package:oyan/src/features/login/presentation/bloc/auth_bloc.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';

import '../../../core/services/injectable/injectable_service.dart';
import '../../../core/utils/loggers/logger.dart';
import '../../../core/widgets/buttons/custom_back_button.dart';
import '../../../core/widgets/buttons/custom_button.dart';

class SetNewPasswordPage extends StatefulWidget {
  const SetNewPasswordPage({super.key, required this.email});

  final String email;

  @override
  State<SetNewPasswordPage> createState() => _SetNewPasswordPageState();
}

class _SetNewPasswordPageState extends State<SetNewPasswordPage> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  bool hasMinLength = false;
  bool hasUpperAndLowerCase = false;
  bool hasDigit = false;
  bool passwordsMatch = false;

  AuthBloc authBloc = getIt<AuthBloc>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final PageController pageController = PageController();

  StorageServiceImpl storageService = StorageServiceImpl();

  @override
  void initState() {
    super.initState();
    passwordController.addListener(_checkPasswordRequirements);
    confirmPasswordController.addListener(_checkPasswordsMatch);
  }

  @override
  void dispose() {
    passwordController.removeListener(_checkPasswordRequirements);
    confirmPasswordController.removeListener(_checkPasswordsMatch);
    passwordController.dispose();
    confirmPasswordController.dispose();
    pageController.dispose();
    super.dispose();
  }

  void _checkPasswordRequirements() {
    setState(() {
      hasMinLength = passwordController.text.length >= 8;
      hasUpperAndLowerCase =
          passwordController.text.contains(RegExp(r'[A-Z]')) && passwordController.text.contains(RegExp(r'[a-z]'));
      hasDigit = passwordController.text.contains(RegExp(r'[0-9]'));
    });
  }

  void _checkPasswordsMatch() {
    setState(() {
      passwordsMatch = passwordController.text == confirmPasswordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        state.whenOrNull(
          loaded: (viewModel) {
            Log.e('Password changed');
            pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
          },
        );
      },
      builder:
          (context, state, bloc) => Scaffold(
            backgroundColor: const Color(0xFFF1F5F9),
            body: SafeArea(
              top: true,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    onPageChanged: (value) {},
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(color: Color(0xFFF1F5F9), blurRadius: 4, offset: Offset(0, 4)),
                                ],
                              ),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Новый пароль',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1E293B),
                                      ),
                                    ),
                                    Text(
                                      'Установите новый пароль для ${widget.email}',
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF757575),
                                      ),
                                    ),
                                    PasswordTextFormField(
                                      passwordController: passwordController,
                                      isPasswordVisible: isPasswordVisible,
                                      onPasswordVisibilityChanged:
                                          () => setState(() => isPasswordVisible = !isPasswordVisible),
                                    ),
                                    PasswordTextFormField(
                                      passwordController: confirmPasswordController,
                                      isPasswordVisible: isConfirmPasswordVisible,
                                      onPasswordVisibilityChanged:
                                          () => setState(() => isConfirmPasswordVisible = !isConfirmPasswordVisible),
                                      confirm: true,
                                    ),
                                    _buildRequirementText('• Не менее 8 символов', hasMinLength),
                                    _buildRequirementText('• Заглавные и строчные буквы', hasUpperAndLowerCase),
                                    _buildRequirementText('• Не менее одной цифры', hasDigit),
                                    _buildRequirementText('• Пароли совпадают', passwordsMatch),
                                    CustomButton(
                                      title: 'Готово',
                                      onTap: () {
                                        if (_formKey.currentState!.validate() &&
                                            hasMinLength &&
                                            hasUpperAndLowerCase &&
                                            hasDigit &&
                                            passwordsMatch) {
                                          authBloc.add(AuthEvent.updatePassword(newPassword: passwordController.text));
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(const SnackBar(content: Text('Processing Login')));
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          CustomBackButton(pageController: pageController),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(color: Color(0xFFF1F5F9), blurRadius: 4, offset: Offset(0, 4)),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                        child: Icon(Icons.verified, color: Color(0xFF2CB1B9), size: 60),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                            child: Text(
                                              'Смена пароля',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF1E293B),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                            child: Text(
                                              'Вы успешно сменили пароль',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF757575),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  CustomButton(
                                    title: 'Войти',
                                    onTap: () {
                                      storageService.clear();
                                      context.go(RoutePaths.login);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomBackButton(pageController: pageController),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget _buildRequirementText(String text, bool isSatisfied) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: isSatisfied ? const Color(0xFF2CB1B9) : Colors.red,
        ),
      ),
    );
  }
}
