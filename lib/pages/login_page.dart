// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hrm_app/pages/employees.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool isEnabled = false;
  bool secureText = true;
  bool auth = true;
  var name;
  var password;
  var username;
  var valueChosen;
  List listItem = ["Select database", "hrm_1", "hrm_2", "hrm_3", "hrm_4"];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue[900],
      child: Column(
        children: [
          SizedBox(
            height: 150.0,
          ),
          Text(
            "odoo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (String value) {
                    if (value == '1.2.3.4') {
                      name = value;
                      setState(() {
                        isEnabled = true;
                      });
                    } else {
                      setState(() {
                        isEnabled = false;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.public_rounded,
                      color: Colors.black54,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Your self-hosted URL",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black54,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Username or email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: secureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black54,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text("Select database"),
                      dropdownColor: Colors.white,
                      focusColor: Colors.white,
                      iconEnabledColor: Colors.black54,
                      iconDisabledColor: Colors.black54,
                      isExpanded: true,
                      value: valueChosen,
                      onChanged: (newValue) {
                        setState(() {
                          valueChosen = newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    if (name == '1.2.3.4' &&
                        username == 'admin' &&
                        password == '123456') {
                      auth = true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Employees()),
                      );
                    } else {
                      auth = false;
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
