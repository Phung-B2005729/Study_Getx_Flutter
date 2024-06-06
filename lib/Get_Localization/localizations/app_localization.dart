import 'package:get/get.dart';
import 'package:getxtest/Get_Localization/localizations/language/en.dart';
import 'package:getxtest/Get_Localization/localizations/language/vn.dart';

class AppLocalization extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en': en, 'vn': vn};
}
