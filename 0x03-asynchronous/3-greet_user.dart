import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUserData());
    String username = userData['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();
    if (isLoggedIn) {
      print('There is a user: true');
      return greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
