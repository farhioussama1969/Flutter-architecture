import 'package:get/get.dart';
import 'languages/arabic.dart';
import 'languages/english.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
