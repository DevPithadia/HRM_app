import 'package:flutter/material.dart';
import 'package:hrm_app/pages/employees.dart';
import 'package:hrm_app/pages/leaves.dart';
import 'package:hrm_app/pages/leaves_page.dart';
import 'package:hrm_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ListOfLeaves();
      },
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/login", //this page will be opened initially
        routes: {
          "/home": (context) => Employees(),
          "/login": (context) => LoginPage(),
          "/leaves": (context) => Leaves(),
          "/leavesPage": (context) => LeavesPage(),
        },
      ),
    );
  }
}
