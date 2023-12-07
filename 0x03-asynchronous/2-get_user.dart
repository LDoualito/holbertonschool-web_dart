// 2-get_user.dart

import '2-util.dart';

Future<void> getUser() async {
  try {
    final userData = await fetchUser();
    print(parseUser(userData));
  } catch (error) {
    print('error caught: $error');
  }
}

String parseUser(String userData) {
  // Parse the user information from the data
  // In a real-world scenario, you might want to use a JSON decoding library
  // For simplicity, we'll use a basic string manipulation method here
  return 'User data: $userData';
}

void main() async {
  await getUser();
}
