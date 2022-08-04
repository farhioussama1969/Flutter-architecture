import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../services/local_storage.dart';

class Theme {
  static String currentTheme = 'light';

  void saveTheme(String theme) {
    Theme.currentTheme = theme;
    LocalStorage().save('theme', theme);
  }

  Future<bool> isThemeSaved() {
    return LocalStorage().isSaved('theme');
  }

  void enableDarkThemeMode() {
    currentTheme = 'dark';
    saveTheme(currentTheme);
    Get.changeThemeMode(ThemeMode.dark);
  }

  void enableLightThemeMode() {
    currentTheme = 'light';
    saveTheme(currentTheme);
    Get.changeThemeMode(ThemeMode.light);
  }

  Future<void> getSavedTheme() async {
    if (await isThemeSaved()) {
      currentTheme = (await LocalStorage().read('theme'))!;
      if (currentTheme == 'light') {
        enableLightThemeMode();
      } else {
        enableDarkThemeMode();
      }
    } else {
      currentTheme = 'light';
      saveTheme(currentTheme);
      enableLightThemeMode();
    }
  }
}
