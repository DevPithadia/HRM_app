// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../leave_widget.dart';
import '../provider.dart';
import 'package:provider/provider.dart';

class LeavesPage extends StatefulWidget {
  @override
  State<LeavesPage> createState() => _LeavesState();
}

class _LeavesState extends State<LeavesPage> {
  @override
  Widget build(BuildContext context) {
    ListOfLeaves lVar = Provider.of<ListOfLeaves>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaves"),
      ),
      body: ListView.builder(
        itemCount: lVar.applications.length,
        itemBuilder: (BuildContext context, int index) {
          return LeaveWidget(
            leaveApplication: lVar.applications[index],
            index: index,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("/leaves");
        },
      ),
    );
  }
}
