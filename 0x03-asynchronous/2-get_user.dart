import 'dart:convert';
import '2-util.dart';

Future<void> getUser() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUser());
    String userID = userData['id'];
    print(userID);
  } catch (e) {
     print('error caught: $e');
  }
}
