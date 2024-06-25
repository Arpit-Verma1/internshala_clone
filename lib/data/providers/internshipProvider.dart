import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/internship_model.dart';
import '../../core/services/internship_services.dart';

class InternshipProvider with ChangeNotifier {
  List<Internship> get internship => _internship;
  Map<String, dynamic> get filterOption => _filterOptions;
  List<Internship> _internship = [];
  bool isLoading = true;
  Map<String, dynamic> _filterOptions = {};

  void fetchInternship() async {
    _internship = await SearchService().fetchSearchResults();
    isLoading = false;
    notifyListeners();
  }

  void filterInternship(Map<String, dynamic> filters) async {
    isLoading = true;
    _internship = await SearchService().fetchAndFilterInternships(filters);
    isLoading = false;
    notifyListeners();
  }

  addFilterOption(String filter, String value) {
    _filterOptions.addAll({filter: value});
  }

  removeFilterOption(String filter) {
    _filterOptions.remove(filter);
  }
}
