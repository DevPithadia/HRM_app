// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_app/pages/employees.dart';
import 'package:hrm_app/pages/expenses.dart';
import 'package:hrm_app/pages/leaves_page.dart';
import 'package:hrm_app/pages/payslips.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://thumbs.dreamstime.com/blog/2021/02/how-to-create-stunning-images-ordinary-sceneries-landscape-photography-36963-image187168069.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Administrator"),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person_fill),
            title: Text(
              "Employees",
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Employees()),
              );
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.doc_text_fill),
            title: Text(
              "Expenses",
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Expenses()),
              );
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.list_bullet),
            title: Text(
              "Leaves",
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeavesPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.square_list),
            title: Text(
              "Payslips",
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Payslips()),
              );
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Settings",
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings_solid),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
