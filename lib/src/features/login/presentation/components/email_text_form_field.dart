import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
    this.enabled = true,
    this.hasError = false,
    this.onChanged,
  });

  final TextEditingController emailController;
  final bool enabled;
  final bool hasError;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[ -~]')),
      ],
      controller: emailController,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      cursorHeight: 24,
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: const Color(0xff323232),
      ),
      cursorColor: context.colors.main,
      decoration: InputDecoration(
        labelText: 'Email',
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
      ),
    );
  }
}
