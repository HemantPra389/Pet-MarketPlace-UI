import 'package:flutter/material.dart';
import 'package:pet_marketplace/constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .55,
                color: Colors.blueGrey.shade300,
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: const NetworkImage(
                          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmVtYWxlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80',
                        ),
                        backgroundColor: Colors.transparent,
                        radius: 36,
                      ),
                      title: const Text(
                        'Illiana',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text('Author'),
                      trailing: Container(child: const Text('May 04, 2022')),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: const SingleChildScrollView(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium arcu et sem interdum feugiat. Phasellus nec ullamcorper odio. Sed massa tellus, molestie nec ultricies sit amet, vulputate non purus. Ut et dictum arcu, eget sodales libero. Aliquam elit neque, fringilla nec aliquam id,',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                color: Colors.white,
              )),
            ],
          ),
          SafeArea(
            child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.grey.shade800,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.upload,
                            size: 30,
                            color: Colors.grey.shade800,
                          )),
                    ],
                  ),
                )),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Image.asset('assets/images/pet-cat2.png'),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Illiana',
                        style: TextStyle(
                            color: Colors.grey.shade900, fontSize: 30),
                      ),
                      Icon(
                        Icons.female,
                        color: Colors.grey.shade700,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Abyssinian cat',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 20),
                      ),
                      Text(
                        '2 years old',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey.shade700,
                        size: 23,
                      ),
                      Text(
                        'Budіvelnikіv Vul., bld. 20,',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: primaryGreen,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        decoration: BoxDecoration(
                            color: primaryGreen,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          'Adoption',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
