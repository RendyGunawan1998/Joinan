import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Searching RS",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            Divider(
              thickness: 5,
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey,
                height: 40,
                width: 40,
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("RS Purnama", style: TextStyle(fontSize: 18)),
              subtitle: Text(
                "Jln Kebayoran",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey,
                height: 40,
                width: 40,
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("RS Surya", style: TextStyle(fontSize: 18)),
              subtitle: Text(
                "Jln Baru",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey,
                height: 40,
                width: 40,
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("RS Agung", style: TextStyle(fontSize: 18)),
              subtitle: Text(
                "Jln Lama",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey,
                height: 40,
                width: 40,
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("RS Kebaktian", style: TextStyle(fontSize: 18)),
              subtitle: Text(
                "Jln Agung Surya",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    ));
  }
}
