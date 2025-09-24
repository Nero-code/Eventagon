import 'dart:convert';

class User {
  final String name;
  final String org;

  const User({required this.name, required this.org});

  factory User.parse(String source) {
    final user = jsonDecode(source);
    return User(name: user['name'], org: user['org']);
  }

  /// "{name: `user`, org: `org`}"
  String serialize() => jsonEncode({"name": name, "org": org});
  String get userStamp => "${org}_${name}_${DateTime.now()}";
}
