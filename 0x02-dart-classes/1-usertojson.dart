// File: 1-usertojson.dart

class User {
  late String name;
  late int age;
  late double height;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}
