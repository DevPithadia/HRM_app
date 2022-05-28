// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:hrm_app/pages/details_page.dart';
import 'package:hrm_app/lists.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                catalog: item,
              ),
            ),
          );
        },
        // ignore: prefer_const_constructors
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(item.image),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          item.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(item.email),
      ),
    );
  }
}
