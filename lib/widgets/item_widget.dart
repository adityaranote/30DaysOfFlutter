import 'package:flutter/material.dart';
import "package:shop_app/models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.red,
      // shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: SizedBox(
          height: 100,
          width: 50,
          child: Image.network(item.image),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          // textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
