// File: 6-inheritance.dart

class User {
  late int id;
  late String name;
  late int age;
  late double height;
  late String user_password;

  User({required this.id, required this.name, required this.age, required this.height, required this.user_password});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height, Password: $user_password)';
  }
}
