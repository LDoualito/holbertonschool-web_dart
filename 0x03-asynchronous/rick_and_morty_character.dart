// rick_and_morty_character.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printCharacterInfo() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/372'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final character = jsonData;

      print('ID: ${character['id']}');
      print('Name: ${character['name']}');
      print('Status: ${character['status']}');
      print('Species: ${character['species']}');
      // Add more fields as needed
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
