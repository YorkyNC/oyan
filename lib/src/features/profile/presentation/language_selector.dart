import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  String _selectedLanguage = 'EN';

  final List<String> _languages = ['en', 'ru', 'kz'];

  void _selectLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
    });
    // Here you would typically handle the language change in your app
    // For example: context.read<LocalizationProvider>().setLanguage(language);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _languages.map((language) {
        final isSelected = language == _selectedLanguage;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: LanguageButton(
            language: language,
            isSelected: isSelected,
            onTap: () => _selectLanguage(language),
          ),
        );
      }).toList(),
    );
  }
}

class LanguageButton extends StatelessWidget {
  final String language;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageButton({
    super.key,
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? context.colors.main : const Color(0xFFF5F5F5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        child: Text(
          language.toUpperCase(),
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF8E8E8E),
          ),
        ),
      ),
    );
  }
}
