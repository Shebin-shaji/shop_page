// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 75,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 4,bottom: 2),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.black45,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black, size: 30),
            label: "Shop",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.black45,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall,
                size: 30,
                color: Colors.black45,
              ),
              label: "Bag"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.black45,
              ),
              label: "Profile"),
              
        ],
      
      ),
    );
  }
}
