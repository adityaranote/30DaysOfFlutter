import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/widgets/drawer.dart';
import 'dart:convert';
import 'package:shop_app/models/catalog.dart';
import 'package:shop_app/widgets/item_widget.dart';

//creating HomePage widget to pass it into main.dart file
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          }),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
