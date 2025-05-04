import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/localization/localization_controller.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  final LanguageController _languageController = LanguageController();

  String get _currentLanguage => _languageController.currentLanguage;

  final List<String> _languages = ['en', 'ru'];

  @override
  void initState() {
    super.initState();
    _languageController.languageNotifier.addListener(_onLanguageChanged);
  }

  void _onLanguageChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _languageController.languageNotifier.removeListener(_onLanguageChanged);
    super.dispose();
  }

  Future<void> _changeLanguage(String languageCode) async {
    await _languageController.setLanguage(languageCode);
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'ru':
        return 'Русский';
      default:
        return 'English';
    }
  }

  String _getLanguageDisplayText(String code) {
    switch (code) {
      case 'en':
        return 'EN';
      case 'ru':
        return 'RU';
      default:
        return 'EN';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _languages.map((language) {
          final isSelected = language == _currentLanguage;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: _LanguageButton(
              languageCode: language,
              displayText: _getLanguageDisplayText(language),
              isSelected: isSelected,
              onTap: () => _changeLanguage(language),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _LanguageButton extends StatelessWidget {
  final String languageCode;
  final String displayText;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageButton({
    required this.languageCode,
    required this.displayText,
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
          color: isSelected ? const Color(0xFF3F51B5) : const Color(0xFFF5F5F5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        child: Text(
          displayText,
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
