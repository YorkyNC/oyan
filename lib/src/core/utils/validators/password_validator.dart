class PasswordValidator {
  static String? validate(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 8) {
      return 'Password must contain at least 8 characters';
    }

    if (RegExp(r'^\d+$').hasMatch(password)) {
      return 'Password cannot be entirely numeric';
    }

    // Check for common passwords
    final commonPasswords = [
      'password',
      '12345678',
      'qwerty123',
      'admin123',
      'welcome1',
      'password123',
      '123456789',
      'abc12345',
    ];
    if (commonPasswords.contains(password.toLowerCase())) {
      return 'Password cannot be a commonly used password';
    }

    // Check for personal information patterns (email-like, username-like)
    if (RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}').hasMatch(password)) {
      return 'Password cannot be similar to your email';
    }

    // Check for username-like patterns
    if (RegExp(r'^[a-zA-Z0-9_]{3,}$').hasMatch(password)) {
      return 'Password cannot be similar to your username';
    }

    return null;
  }

  static bool isStrong(String password) {
    // Check for uppercase letters
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    // Check for lowercase letters
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    // Check for numbers
    bool hasNumbers = password.contains(RegExp(r'[0-9]'));
    // Check for special characters
    bool hasSpecialCharacters = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return hasUppercase && hasLowercase && hasNumbers && hasSpecialCharacters;
  }
}
