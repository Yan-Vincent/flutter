library flutter;

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part './shared.dart';

class Flutter {
  static Future shared(String key, {
    SharedHandle handle = SharedHandle.get,
    SharedType type = SharedType.string,
    dynamic value,
  }) async {
    switch (handle) {
      case SharedHandle.remove:
        await _Shared().remove(key);
        break;
      case SharedHandle.get:
        return _Shared().get(type, key);
      case SharedHandle.set:
        await _Shared().set(type, key, value);
        break;
    }
  }
  static Future<void> init() async {
    await _Shared().init();
  }
}
