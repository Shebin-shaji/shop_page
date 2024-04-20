// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer(
      {super.key,
      required this.image,
      required this.productName,
      required this.rate,
      required this.productType});
  final String image;
  final String productName;
  final String productType;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image)),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              productName,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productType,
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
            Text(rate, style: TextStyle(color: Colors.black54, fontSize: 15))
          ],
        ),
      ),
    );
  }
}
