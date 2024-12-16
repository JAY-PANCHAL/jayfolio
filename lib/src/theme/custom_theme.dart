import 'package:flutter/material.dart';

class CustomTheme extends ChangeNotifier {
  bool isDarkTheme = true;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.transparent,//Colors.white.withOpacity(0.1),
      hoverColor: const Color(0xff9fd1f5).withOpacity(0.225),
      cardColor: const Color(0xFF519259).withOpacity(0.1),
      primaryColor: const Color(0xFF064635).withOpacity(0.4),
      primaryColorDark: Colors.white54,
      useMaterial3: true,
      primaryColorLight: Colors.black,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.transparent,//const Color(0xFF171c28).withOpacity(0.1),
      hoverColor: const Color(0xFF1a4b6e).withOpacity(0.5),
      cardColor: const Color(0xFF10576e).withOpacity(0.1),
      useMaterial3: true,
      primaryColor: const Color(0xFF02bbe5),
      primaryColorDark: const Color(0xFF6c7582),
      primaryColorLight: Colors.white,
    );
  }
}
