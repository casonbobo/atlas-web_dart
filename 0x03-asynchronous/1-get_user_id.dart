import 'dart:convert';
import '1-util.dart';

Future<String> getUserID() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUserData());
    String userID = userData['id'];
    return userID;
  } catch (e) {
    return 'Error fetching user ID: $e';
  }
}
