import 'package:flutter/material.dart';
import 'package:hrm_app/lists.dart';
import 'package:hrm_app/provider.dart';
import 'package:provider/provider.dart';

import '../drawer.dart';
import '../item_widget.dart';

class Employees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
