import 'package:flutter/material.dart';

import '../ProductModel.dart';

class CRUDProductAdmin extends StatefulWidget {
  final ValueSetter<ProductModel> _valueSetter;

  CRUDProductAdmin(this._valueSetter);

  @override
  _CRUDProductAdminState createState() => _CRUDProductAdminState();
}

class _CRUDProductAdminState extends State<CRUDProductAdmin> {
  List<ProductModel> products = [
    ProductModel("Mic", 150000),
    ProductModel("LED Monitor", 2000000),
    ProductModel("Mouse", 50000),
    ProductModel("Keyboard", 100000),
    ProductModel("Speaker", 5000000),
    ProductModel("CD", 300000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showDialog(
          //   context: context,
          //   builder: (BuildContext context) {
          //     return AlertDialog();
          //   },
          // );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                // Dismissible(
                //   key: Key(todos[index]),
                //   child: ListTile(
                //     title: Text(todos[index]),
                //   ),
                // ),
                ListTile(
                  title: Text(products[index].name),
                  trailing: Text(
                    "\Rp ${products[index].price}",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    widget._valueSetter(products[index]);
                  },
                ),
              ],
            );
          },
          // separatorBuilder: (context, index) {
          //   return Divider();
          // },
          itemCount: products.length),
    );
  }
}
