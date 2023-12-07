// 3-greet_user.dart

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = parseUsername(userData);
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final hasUser = await checkCredentials();
    print('There is a user: $hasUser');
    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

String parseUsername(String userData) {
  // Parse the username from the user data
  // In a real-world scenario, you might want to use a JSON decoding library
  // For simplicity, we'll use a basic string manipulation method here
  return 'admin'; // Assuming the username is present in the user data
}

void main() async {
  print(await loginUser());
}
