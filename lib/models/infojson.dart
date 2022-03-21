class User {
  final String username;
  final String password;
  final String firebase;
  final String version;
  final String tipoterminal;

  User({
    required this.username,
    required this.password,
    required this.firebase,
    required this.version,
    required this.tipoterminal,
  });
}

List<User> user = [
  User(
    username: "{{demo}}",
    password: "{{700}}",
    firebase: "xxxxx",
    version: "{{version}}",
    tipoterminal: "ANDROID",
  )
];
