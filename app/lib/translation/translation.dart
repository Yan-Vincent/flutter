import 'package:get/get.dart';
import './zh_cn.dart';
import './en_us.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN': zh,
    'en_US': en,
  };
}
