import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "";
  List todos = [];

  // createTodos() {
  //   DocumentReference docRef =
  //       FirebaseFirestore.instance.collection("MyTodos").doc(input);

  //   Map<String, String> todos = {"todoTitle": input};

  //   docRef.set(todos).whenComplete(() {
  //     print("$input created");
  //   });
  // }

  // deleteTodos(item) {
  //   DocumentReference docRef =
  //       FirebaseFirestore.instance.collection("MyTodos").doc(item);

  //   docRef.delete().whenComplete(() {
  //     print("$item deleted");
  //   });
  // }

  @override
  void initState() {
    super.initState();
    todos.add("Item 1");
    todos.add("Item 2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List To Do"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(todos[index]),
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(
                  todos[index],
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      todos.removeAt(index);
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Add list"),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          todos.add(input);
                        });
                        Navigator.pop(context);
                      },
                      child: Text("Add"),
                    ),
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
