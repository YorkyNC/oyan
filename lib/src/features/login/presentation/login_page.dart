import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
import 'package:oyan/src/core/theme/colors.dart';
import 'package:oyan/src/core/theme/typography.dart';
import 'package:oyan/src/core/utils/loggers/logger.dart';
import 'package:oyan/src/core/widgets/buttons/custom_button.dart';
import 'package:oyan/src/features/login/presentation/components/password_text_form_field.dart';
import 'package:oyan/src/features/login/presentation/custom_snack_bar.dart';

import '../../../core/services/injectable/injectable_service.dart';
import 'bloc/auth_bloc.dart';
import 'components/email_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  StorageServiceImpl storageService = StorageServiceImpl();

  AuthBloc authBloc = getIt<AuthBloc>();

  bool _isPasswordVisible = false;

  String _passwordErrorText = 'Пожалуйста, введите пароль';

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      listenWhen: (previous, current) {
        return current.maybeMap(error: (_) => true, loaded: (_) => true, orElse: () => false);
      },
      listener: (context, state) {
        state.whenOrNull(
          error: (error) {
            _passwordController.clear();
            _formKey.currentState!.validate();
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar.show(title: error, seconds: 3));
          },
          loaded: (viewModel) {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(CustomSnackBar.show(title: 'Успешно вошли в систему', seconds: 3));

            storageService.setToken(viewModel.token);
            storageService.setRefreshToken(viewModel.refreshToken);

            Log.e(viewModel.token);
            Log.e(storageService.getRefreshToken()!);

            context.pushReplacement(RoutePaths.review);
          },
        );
      },
      builder: (context, state, bloc) {
        return Scaffold(
          backgroundColor: const Color(0xFFF1F5F9),
          body: SafeArea(
            top: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [BoxShadow(color: Color(0xFFF1F5F9), blurRadius: 4, offset: Offset(0, 4))],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                            child: Text(
                              'Вход в учетную запись',
                              style: const FigmaTextStyles().typography4Bold.copyWith(color: context.colors.gray800),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                            child: Text(
                              'Данные выдаются администрацией',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF757575),
                              ),
                            ),
                          ),
                          EmailTextFormField(emailController: _emailController),
                          PasswordTextFormField(
                            passwordController: _passwordController,
                            isPasswordVisible: _isPasswordVisible,
                            errorText: _passwordErrorText,
                            onPasswordVisibilityChanged: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          CustomButton(
                            formKey: _formKey,
                            title: 'Войти',
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  _passwordErrorText = 'Неверный логин или пароль';
                                });
                                authBloc.add(
                                  AuthEvent.login(username: _emailController.text, password: _passwordController.text),
                                );
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(CustomSnackBar.show(title: 'Пожалуйста, подождите...', seconds: 1));
                              } else {
                                setState(() {
                                  _passwordErrorText = 'Пожалуйста, введите пароль';
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(RouteNames.forgotPassword);
                    },
                    child: const Text(
                      'Забыли пароль?',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2599A0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
