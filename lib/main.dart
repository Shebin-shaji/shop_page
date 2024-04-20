// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_page/dummydb.dart';
import 'package:shop_page/widgets/custom_bottom_nav_bar.dart';
import 'package:shop_page/widgets/product_details_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    "All Shoes",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                )
              ],
              bottom: TabBar(
                tabs: [
                  Text(
                    "All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  Text(
                    "LifeStyle",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black54),
                  ),
                  Text(
                    "Jordan",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black54),
                  ),
                  Text(
                    "Running",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black54),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.only(bottom: 15),
                indicatorColor: Colors.black,
              ),
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 3,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20),
                itemCount: DummyDb.productDetails.length,
                padding: EdgeInsets.only(left: 10, right: 10, top: 32),
                itemBuilder: (context, index) => ProductDetailsContainer(
                      image: DummyDb.productDetails[index]["image"],
                      productName: DummyDb.productDetails[index]["productName"],
                      rate: DummyDb.productDetails[index]["rate"],
                      productType: DummyDb.productDetails[index]["productType"],
                    )),
            bottomNavigationBar: CustomBottomNavBar()),
      ),
    );
  }
}
