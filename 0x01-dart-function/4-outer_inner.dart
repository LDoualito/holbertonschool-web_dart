// File: 4-outer_inner.dart

void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String lastName = nameParts.length > 1 ? nameParts[1] : '';
    String formattedLastName = lastName.isNotEmpty ? '${lastName[0]}' : '';
    return 'Hello Agent $formattedLastName.${nameParts[0]} your id is $id';
  }

  print(inner());
}
