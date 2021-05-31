import 'package:appdesign/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisPage extends StatefulWidget {
  _RegisPageState createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Registration Page",
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
                      Get.to(() => ProfilePage());
                    },
                    child: Text(
                      'Registration',
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
