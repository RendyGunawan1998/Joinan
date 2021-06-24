import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm9/hal_utama.dart';
import 'package:pm9/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                  "assets/images/rs3.png",
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
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lupa Kata Sandi?",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      child: Text(
                        "Belum punya akun?",
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
                      Get.offAll(MainPageHall());
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
