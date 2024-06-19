class Password {
  String _password = '';

   Password({String password = ''}) {
    _password = password;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    bool lengthCheck = _password.length >= 8 && _password.length <= 16;
    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUpperCase && hasLowerCase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
