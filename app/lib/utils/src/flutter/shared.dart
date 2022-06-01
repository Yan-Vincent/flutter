part of flutter;

class Shared {
  factory Shared() => _shared;
  static late final Shared _shared = Shared._();
  Shared._();
  static late final SharedPreferences _sharedPreferences;

  static Future set<T>(String key, T value) async {
    String type = value.runtimeType.toString();
    switch (type) {
      case 'bool':
        await _sharedPreferences.setBool(key, value as bool);
        break;
      case 'double':
        await _sharedPreferences.setDouble(key, value as double);
        break;
      case 'int':
        await _sharedPreferences.setInt(key, value as int);
        break;
      case 'String':
        await _sharedPreferences.setString(key, value as String);
        break;
      case 'List<String>':
        await _sharedPreferences.setStringList(key, value as List<String>);
        break;
      default:
        await _sharedPreferences.setString(key, json.encode(value));
        break;
    }
  }

  static dynamic get<T>(String key) {
    dynamic value = _sharedPreferences.get(key);
    try {
      return json.decode(value);
    } catch (e) {
      return value;
    }
  }

  static Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<bool> clean() async {
    return await _sharedPreferences.clear();
  }

  static Future<Shared> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _shared;
  }
}
