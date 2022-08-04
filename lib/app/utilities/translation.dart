import 'dart:ui';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../services/local_storage.dart';

class Translation {
  static String currentLang = 'ar';

  void saveLanguage(String lang) {
    Translation.currentLang = lang;
    LocalStorage().save('lang', lang);
  }

  Future<bool> isLanguageSaved() {
    return LocalStorage().isSaved('lang');
  }

  void changeLanguage(String lang) {
    Get.updateLocale(Locale(lang));
  }

  Future<void> getSavedLanguage() async {
    if (await isLanguageSaved()) {
      currentLang = (await LocalStorage().read('lang'))!;
      changeLanguage(currentLang);
    } else {
      currentLang = 'ar';
      saveLanguage(currentLang);
      changeLanguage(currentLang);
    }
  }
}
