import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.passwordController,
    required this.isPasswordVisible,
    required this.onPasswordVisibilityChanged,
    this.enabled = true,
    this.labelText = 'Password',
    this.validator,
    this.confirm = false,
    this.hasError = false,
    this.onChanged,
  });

  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback onPasswordVisibilityChanged;
  final bool enabled;
  final String labelText;
  final String? Function(String?)? validator;
  final bool confirm;
  final bool hasError;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: const Color(0xff323232),
      ),
      cursorColor: context.colors.main,
      controller: passwordController,
      obscureText: !isPasswordVisible,
      enabled: enabled,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: confirm ? 'Confirm Password' : labelText,
        labelStyle: GoogleFonts.openSans(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: hasError ? Colors.red : const Color(0xffA2ADD0),
        ),
        errorStyle: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.red,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: hasError ? Colors.red : const Color(0xFFE2E8F0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: hasError ? Colors.red : const Color(0xFFE2E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: hasError ? Colors.red : context.colors.main,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            color: hasError ? Colors.red : const Color(0xffA2ADD0),
          ),
          onPressed: onPasswordVisibilityChanged,
        ),
      ),
    );
  }
}
