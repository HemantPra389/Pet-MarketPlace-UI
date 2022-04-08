import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_marketplace/constants.dart';
import 'package:pet_marketplace/detail_screen.dart';
import 'package:pet_marketplace/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  fontFamily: 'CircularStd-Medium',
                  fontSize: 24,
                  color: Colors.grey.shade400))),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DrawerScreen(),
      MyHomePage(),
    ]));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;
  bool isOpenDrawer = false;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(isOpenDrawer ? 40 : 0)),
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isOpenDrawer
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isOpenDrawer = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isOpenDrawer = true;
                              });
                            },
                            icon: Icon(Icons.menu)),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ukraine',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                '  Kyiv,  ',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: 'CircularStd-Medium',
                                    color: Colors.grey.shade700),
                              ),
                              Text('Ukraine',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .apply(color: Colors.grey.shade800))
                            ],
                          )
                        ]),
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmVtYWxlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80',
                      ),
                      backgroundColor: Colors.transparent,
                      radius: 26,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      label: Text('Search pet to adopt'),
                      suffixIcon: Icon(Icons.settings)),
                )),
            Container(
              height: 90,
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: ListView.builder(
                itemBuilder: (context, index) => Column(children: [
                  Container(
                      height: 70,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          categories[index]['iconPath'],
                          color: Colors.white,
                        ),
                      )),
                  Text(
                    categories[index]['name'],
                    style: TextStyle(fontSize: 18),
                  )
                ]),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 510,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  )),
                  child: Container(
                    height: 240,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 60,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey.withOpacity(.5)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/pet-cat2.png'),
                            )
                          ],
                        )),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 80, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 10, bottom: 20, right: 5, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Sola',
                                    style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              Text(
                                'Abyssinian cat',
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 20),
                              ),
                              Text(
                                '2 years old',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade500),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey.shade700,
                                    size: 23,
                                  ),
                                  Text(
                                    'Budіvelnikіv Vul.,4',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
