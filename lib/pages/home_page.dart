import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/widgets/drawer.dart';
import 'dart:convert';

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
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");

    var decodeData = jsonDecode(catalogJson);
    // print(decodeData);
    var productsData = decodeData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
