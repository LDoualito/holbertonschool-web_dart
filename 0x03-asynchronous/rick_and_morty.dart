import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/372'));
    
    if (response.statusCode == 200) {
      final Map<String, dynamic> characterData = json.decode(response.body);
      final String characterName = characterData['name'];
      final String characterStatus = characterData['status'];
      final String characterSpecies = characterData['species'];

      print('Character Information:');
      print('Name: $characterName');
      print('Status: $characterStatus');
      print('Species: $characterSpecies');
    } else {
      print('Failed to fetch character information. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
