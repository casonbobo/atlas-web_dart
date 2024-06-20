import 'dart:async';

Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print('Number of users: $count');
  } catch (e) {
    print('Error fetching user count: $e');
  }
}
