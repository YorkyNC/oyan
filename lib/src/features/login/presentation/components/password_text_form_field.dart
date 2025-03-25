import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  PasswordTextFormField({
    super.key,
    required this.passwordController,
    required this.isPasswordVisible,
    this.onPasswordVisibilityChanged,
    this.errorText = 'Пожалуйста, введите пароль',
    this.confirm = false,
  });

  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback? onPasswordVisibilityChanged;
  final bool? confirm;
  final String? errorText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 4,
      ),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        controller: widget.passwordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          }
          return null;
        },
        cursorHeight: 24,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        obscureText: !widget.isPasswordVisible,
        obscuringCharacter: '•',
        cursorColor: const Color(0xFF2CB1B9),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
          labelText: widget.confirm! ? 'Повторите пароль' : 'Пароль',
          labelStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF64748B),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF2CB1B9)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.isPasswordVisible
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: const Color(0xFF64748B),
            ),
            onPressed: () {
              widget.onPasswordVisibilityChanged?.call();
            },
          ),
        ),
      ),
    );
  }
}
