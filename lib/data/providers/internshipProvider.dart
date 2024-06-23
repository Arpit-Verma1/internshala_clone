import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/internship_model.dart';
import '../../core/services/internship_services.dart';

class InternshipProvider with ChangeNotifier {
  List<Job> get internship => _internship;
  List<Job> _internship = [];
  bool isLoading = true;

  void fetchInternship() async {
    _internship = await SearchService().fetchSearchResults();
    isLoading = false;
    notifyListeners();
  }
}
