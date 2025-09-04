import 'package:shared_preferences/shared_preferences.dart';
import 'package:vollect/app/classes/user.dart';

class UserController {
  final SharedPreferences _preferences;
  UserController({required SharedPreferences preferences})
      : _preferences = preferences;

  Future<void> saveUser(User user) async {
    await _preferences.setString("User", user.serialize());
  }

  Future<User?> getUser() async {
    final source = _preferences.getString("User");
    if (source == null) return null;
    return User.parse(source);
  }
}
