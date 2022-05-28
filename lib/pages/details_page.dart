// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hrm_app/lists.dart';
import 'package:hrm_app/pages/leaves.dart';
import 'package:hrm_app/pages/leaves_page.dart';
import 'package:hrm_app/pages/payslips.dart';

class DetailsPage extends StatelessWidget {
  final Item catalog;

  const DetailsPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 225,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(catalog.image),
                    ),
                  ),
                  Text(
                    catalog.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    catalog.pos,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: Container(
                    height: 110,
                    width: 160,
                    child: InkWell(
                      child: const Card(
                        child: Center(
                          child: Text(
                            "Apply for Leave",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/leaves').then((_) {
                          // This block runs when you have returned back to the 1st Page from 2nd.
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: Container(
                    height: 110,
                    width: 160,
                    child: InkWell(
                      child: const Card(
                        child: Center(
                          child: Text(
                            "Payslips",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: InkWell(
                child: Card(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'email: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: catalog.email,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: InkWell(
                child: Card(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Mo. no.: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: catalog.moNo.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: InkWell(
                child: Card(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Address: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: catalog.address,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: InkWell(
                child: Card(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'DOB: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: catalog.dob,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
