import 'package:flutter/material.dart';
import 'package:hrm_app/pages/leaves.dart';

class ListOfLeaves with ChangeNotifier {
  List<LeaveApplication> _listOfLeaves = [];
  int get count => _listOfLeaves.length;
  List<LeaveApplication> get applications => _listOfLeaves;

  void addApplicant(LeaveApplication applicant) {
    _listOfLeaves.add(applicant);
    notifyListeners();
  }

  void acceptApplicant(int index) {
    _listOfLeaves.removeAt(index);
    notifyListeners();
  }

  void denyApplicant(int index) {
    _listOfLeaves.removeAt(index);
    notifyListeners();
  }
}
