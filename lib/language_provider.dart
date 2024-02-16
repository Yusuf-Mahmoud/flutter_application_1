import 'package:flutter/material.dart';

enum LanguageType { English, Arabic }

class LanguageProvider extends ChangeNotifier {
  LanguageType _language = LanguageType.English;

  LanguageType get language => _language;

  void toggleLanguage() {
    _language = _language == LanguageType.English
        ? LanguageType.Arabic
        : LanguageType.English;
    notifyListeners();
  }
}
