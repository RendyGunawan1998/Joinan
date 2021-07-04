import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listtodo/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.orange,
        primaryColor: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: <Color>[Color(0xFFB2DFDB), Color(0xFFA7FFEB)],
          // )),
          width: _width,
          height: _height,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/list.jpg",
                  height: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            icon: Icon(
                              Icons.person,
                              color: Colors.blueGrey[200],
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              icon: Icon(
                                Icons.lock_open,
                                color: Colors.blueGrey[200],
                              ),
                              border: UnderlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     "Lupa Kata Sandi?",
                    //     style: TextStyle(fontSize: 10),
                    //   ),
                    // ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ));
                      },
                      child: Text(
                        "Admin?",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: MaterialButton(
                    onPressed: () {
                      Get.offAll(MyHomePage());
                    },
                    child: Text("Login"),
                    color: Colors.greenAccent,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
