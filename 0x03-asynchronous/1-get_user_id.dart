// 1-get_user_id.dart

import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userId = parseUserId(userData);
  return userId;
}

String parseUserId(String userData) {
  // Parse the user ID from the JSON data
  // In a real-world scenario, you might want to use a JSON decoding library
  // For simplicity, we'll use a basic string manipulation method here
  final start = userData.indexOf('"id" : "') + '"id" : "'.length;
  final end = userData.indexOf('"', start);
  return userData.substring(start, end);
}

void main() async {
  print(await getUserId());
}
