import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/internship_model.dart';

class SearchService {
  static const String apiUrl = 'https://internshala.com/flutter_hiring/search';

  Future<List<Job>> fetchSearchResults() async {
    try {
      final response = await http.get(Uri.parse('$apiUrl'));
      print("Response status code: ${response.statusCode}");

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        final Map<String, dynamic> internshipsMetaMap =
            jsonResponse['internships_meta'];

        List<Job> internships = [];

        internshipsMetaMap.forEach((key, value) {
          internships.add(Job.fromJson(value));
        });

        return internships;
      } else {
        throw Exception('Failed to load search results');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
