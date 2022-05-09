import 'package:flutter/material.dart';
import 'package:shop_app/models/catalog.dart';
import 'package:shop_app/widgets/drawer.dart';
import 'package:shop_app/widgets/item_widget.dart';

//creating HomePage widget to pass it into main.dart file
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
