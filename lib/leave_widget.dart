// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hrm_app/pages/leaves.dart';
import 'package:hrm_app/provider.dart';
import 'package:provider/provider.dart';

class LeaveWidget extends StatelessWidget {
  final LeaveApplication leaveApplication;
  final int index;
  const LeaveWidget(
      {Key? key, required this.leaveApplication, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    ListOfLeaves lVar = Provider.of<ListOfLeaves>(context, listen: false);
    return Card(
      child: ListTile(
        leading: IconButton(
          icon: Icon(
            Icons.done_rounded,
            color: Colors.green,
          ),
          onPressed: () {
            lVar.acceptApplicant(index);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Leave Accepted"),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.remove_circle_outline,
            color: Colors.red,
          ),
          onPressed: () {
            lVar.denyApplicant(index);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Leave Denied"),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
        title: Text(leaveApplication.empName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("description: " + leaveApplication.desc),
            Text("From: " + leaveApplication.sDate),
            Text("To: " + leaveApplication.eDate),
          ],
        ),
      ),
    );
  }
}
