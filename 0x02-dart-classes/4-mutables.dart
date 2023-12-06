// File: 4-mutables.dart

class Password {
  late String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    // Check if the password meets the specified criteria
    return _password.length >= 8 &&
        _password.length <= 16 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'));
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }

  @override
  String toString() {
    return 'Password $_password';
  }
}