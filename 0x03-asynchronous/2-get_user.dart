import 'dart:convert';
import '2-util.dart';

Future<String> getUser() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUser());
    Future<String> user = userData
    return user;
  } catch (e) {
    return 'error caught: $e';
  }
}
