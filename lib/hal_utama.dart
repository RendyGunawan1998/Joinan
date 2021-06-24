import 'package:flutter/material.dart';
import 'package:pm9/search.dart';

class MainPageHall extends StatefulWidget {
  @override
  _MainPageHallState createState() => _MainPageHallState();
}

class _MainPageHallState extends State<MainPageHall> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              width: _width,
              height: 200,
              child: Image.asset("assets/images/rs3.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 7),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      child: Text(
                        "Selamat Datang di aplikasi Jakarta Smart City",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: 150,
                          width: 200,
                          child: MaterialButton(
                            color: Colors.grey.withOpacity(0.5),
                            onPressed: () {},
                            child: Text(
                              "Tracking Rumah Sakit",
                              style: TextStyle(fontSize: 39),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: 150,
                          width: 200,
                          child: MaterialButton(
                            color: Colors.grey.withOpacity(0.5),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Search Rumah Sakit",
                              style: TextStyle(fontSize: 39),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded),
          ),
        ],
      ),
    );
  }
}
