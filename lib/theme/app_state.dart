import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends ChangeNotifier {
  final String key = "themeMode";
  SharedPreferences? _preferences;
  bool? isDarkModeOn;
  bool isDrawerOpened = false;

  onDrawerChange(bool status){
    isDrawerOpened = status;
    notifyListeners();
  }

  bool? get darkMode => isDarkModeOn;

  AppState() {
    isDarkModeOn = false;
    _loadFromPreferences();
  }

  _initialPreferences() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  _savePreferences() async {
    await _initialPreferences();
    _preferences!.setBool(key, isDarkModeOn!);
  }

  _loadFromPreferences() async {
    await _initialPreferences();
    isDarkModeOn = _preferences!.getBool(key) ?? false;
    notifyListeners();
  }

  toggleChangeTheme() {
    isDarkModeOn = !isDarkModeOn!;
    _savePreferences();
    notifyListeners();
  }
}
