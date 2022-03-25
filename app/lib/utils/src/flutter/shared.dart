part of flutter;

enum SharedHandle {
  remove,
  get,
  set,
}
enum SharedType {
  int,
  bool,
  double,
  string,
  stringList,
}

class _Shared {
  late SharedPreferences _shared;

  Future<void> set(SharedType sharedType, String key, dynamic value) async {
    switch (sharedType) {
      case SharedType.int:
        await _shared.setInt(key, value);
        break;
      case SharedType.bool:
        await _shared.setBool(key, value);
        break;
      case SharedType.double:
        await _shared.setDouble(key, value);
        break;
      case SharedType.string:
        await _shared.setString(key, value);
        break;
      case SharedType.stringList:
        await _shared.setStringList(key, value);
        break;
    }
  }

  dynamic get(SharedType sharedType, String key) {
    switch (sharedType) {
      case SharedType.int:
        return _shared.getInt(key);
      case SharedType.bool:
        return _shared.getBool(key);
      case SharedType.double:
        return _shared.getDouble(key);
      case SharedType.string:
        return _shared.getString(key);
      case SharedType.stringList:
        return _shared.getStringList(key);
    }
  }

  Future<void> remove(String key) async {
    await _shared.remove(key);
  }

  Future<void> init() async {
    _shared = await SharedPreferences.getInstance();
  }
}
