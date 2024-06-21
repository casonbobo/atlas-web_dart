import 'dart:convert';
import '2-util.dart';

Future<String> getUser() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUser());
    String userID = userData[];
    return userID;
  } catch (e) {
    return 'error caught: $e';
  }
}
