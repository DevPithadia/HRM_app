// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../provider.dart';

class LeaveApplication {
  String empName;
  String desc;
  String sDate;
  String eDate;
  LeaveApplication(
      {required this.empName,
      required this.desc,
      required this.sDate,
      required this.eDate});
}

class Leaves extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
  TextEditingController dateinput1 = TextEditingController();
  TextEditingController dateinput2 = TextEditingController();
  LeaveApplication? applicant = LeaveApplication(
      empName: "name", desc: "desc", sDate: "date", eDate: "date");
  final _form = GlobalKey<FormState>();

  void _saveForm() {
    _form.currentState!.save();
    Provider.of<ListOfLeaves>(context, listen: false).addApplicant(applicant!);
  }

  @override
  void initState() {
    dateinput1.text = ""; //set the initial value of text field
    super.initState();
    dateinput1.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave Application"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              key: _form,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Employee name",
                    ),
                    onSaved: (newValue) => applicant!.empName = newValue!,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.list),
                      labelText: "Description",
                    ),
                    onSaved: (newValue) => applicant!.desc = newValue!,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: dateinput1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today),
                      labelText: "Start date",
                    ),
                    onTap: () async {
                      DateTime? pickedDate1 = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2023));

                      if (pickedDate1 != null) {
                        String formattedDate1 = DateFormat('dd-MM-yyyy')
                            .format(pickedDate1)
                            .toString();
                        setState(() {
                          dateinput1.text = formattedDate1;
                        });
                      }
                    },
                    onSaved: (newValue) => applicant!.sDate = newValue!,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: dateinput2,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today),
                      labelText: "End date",
                    ),
                    onTap: () async {
                      DateTime? pickedDate2 = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2023));

                      if (pickedDate2 != null) {
                        String formattedDate2 = DateFormat('dd-MM-yyyy')
                            .format(pickedDate2)
                            .toString();
                        setState(() {
                          dateinput2.text = formattedDate2;
                        });
                      }
                    },
                    onSaved: (newValue) => applicant!.eDate = newValue!,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: Text("Done"),
                    onPressed: () {
                      _saveForm();
                      Navigator.of(context).pushNamed("/leavesPage");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
