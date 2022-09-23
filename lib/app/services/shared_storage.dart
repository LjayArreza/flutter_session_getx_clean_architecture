import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage {
  static const _keyAccessToken = 'token';

  Future saveAccessToken(String token) async {
    var pref = await SharedPreferences.getInstance();
    pref.setString(_keyAccessToken, token);
  }

  Future getAccessToken() async {
    var pref = await SharedPreferences.getInstance();
    return pref.getString(_keyAccessToken);
  }

  Future clearStorage() async {
    var pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
