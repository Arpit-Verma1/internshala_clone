import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/internship_model.dart';

class SearchService {
  static const String apiUrl = 'https://internshala.com/flutter_hiring/search';

  Future<List<Internship>> fetchSearchResults() async {
    try {
      final response = await http.get(Uri.parse('$apiUrl'));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        final Map<String, dynamic> internshipsMetaMap =
            jsonResponse['internships_meta'];

        List<Internship> internships = [];

        internshipsMetaMap.forEach((key, value) {
          internships.add(Internship.fromJson(value));
        });

        return internships;
      } else {
        throw Exception('Failed to load search results');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<Internship>> fetchAndFilterInternships(
      Map<String, dynamic> filters) async {
    try {
      final response = await http.get(Uri.parse('$apiUrl'));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        final Map<String, dynamic> internshipsMetaMap =
            jsonResponse['internships_meta'];

        List<Internship> internships = [];
        internshipsMetaMap.forEach((key, value) {
          internships.add(Internship.fromJson(value));
        });

        // Apply filters to the list of internships
        return filterInternships(internships, filters);
      } else {
        throw Exception('Failed to load search results');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  List<Internship> filterInternships(
      List<Internship> internships, Map<String, dynamic> filters) {
    return internships.where((internship) {
      final internshipMap = internship.toMap();
      for (var filter in filters.entries) {
        if (internshipMap[filter.key] != filter.value) {
          return false;
        }
      }
      return true;
    }).toList();
  }
}
