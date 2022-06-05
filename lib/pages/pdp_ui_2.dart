import 'package:flutter/material.dart';

class PdpUI2 extends StatefulWidget {
  static final String id = "home_page";

  @override
  _PdpUI2State createState() => _PdpUI2State();
}

class _PdpUI2State extends State<PdpUI2> {
  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade900,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          title: Text("Apple Products"),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.orange[700],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("7"),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // #header
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_3.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Lifestyle sale",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.grey[900]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // GridView
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children:
                    _listItem.map((item) => cellOfList(item)).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}