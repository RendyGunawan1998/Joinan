import 'package:appdesign/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 60,
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email Anda",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue[900],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.blue[900]),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.blue[900]),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(() => MyHomePage());
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
