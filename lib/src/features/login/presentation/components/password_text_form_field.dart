import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

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
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: widget.passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.errorText;
        }
        return null;
      },
      cursorHeight: 24,
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: const Color(0xff323232),
      ),
      obscureText: !widget.isPasswordVisible,
      obscuringCharacter: '*',
      cursorColor: context.colors.main,
      decoration: InputDecoration(
        errorStyle: GoogleFonts.openSans(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.red),
        labelText: widget.confirm! ? 'Repeate Password' : 'Password',
        labelStyle: GoogleFonts.openSans(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: const Color(0xffA2ADD0),
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
          borderSide: BorderSide(
            color: context.colors.main,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            widget.isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            color: const Color(0xFF64748B),
          ),
          onPressed: () {
            widget.onPasswordVisibilityChanged?.call();
          },
        ),
      ),
    );
  }
}
