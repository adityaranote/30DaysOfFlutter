import 'package:flutter/material.dart';
import 'package:shop_app/widgets/drawer.dart';

//creating HomePage widget to pass it into main.dart file
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

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
