class Password{
  String password = '';

  bool isValid() {
    bool lengthCheck = password.length >= 8 && password.length <= 16;
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
    bool hasNumber = password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUpperCase && hasLowerCase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
