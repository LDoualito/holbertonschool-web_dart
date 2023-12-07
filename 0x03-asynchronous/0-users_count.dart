// 0-users_count.dart

import '0-util.dart';

Future<void> usersCount() async {
  final count = await fetchUsersCount();
  print(count);
}

void main() async {
  await usersCount();
}
