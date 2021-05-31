import 'package:appdesign/profile.dart';
import 'package:appdesign/regis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            // decoration: BoxDecoration(
            //     color: Colors.teal,
            //     //border: Border.all(),
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey,
            //         blurRadius: 20,
            //         // offset: Offset(10, 10),
            //       ),
            //       BoxShadow(
            //         color: Colors.grey,
            //         blurRadius: 20,
            //         // offset: Offset(10, 10),
            //       ),
            //     ]),
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
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
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
                    hintText: "Kata Sandi",
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
                MaterialButton(
                  onPressed: () {
                    Get.to(() => ProfilePage());
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => RegisPage());
                  },
                  child: Text(
                    'Dont have account? Regis Here!',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
