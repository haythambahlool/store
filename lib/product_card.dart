import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/products.dart';

class product_card extends StatelessWidget {
  const product_card(
      {Key? key,
      required this.product,
      required this.idex,
      required this.press})
      : super(key: key);

  @override
  final Product product;
  final int idex;
  final Function press;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, right: 20, left: 20),
      height: 190,
      child: InkWell(
        onTap: () => press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        offset: Offset(0, 15),
                        color: Colors.black12)
                  ]),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                product.image,
                width: 200,
                height: 160,
              ),
            ),
            Positioned(
                top: 60,
                right: 20,
                child: Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            Positioned(
              top: 100,
              right: 20,
              child: Text(
                product.subTitle,
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
            ),
            Positioned(
                top: 140,
                right: 20,
                child: Stack(
                  children: [
                    Container(
                      height: 25,
                      width: 120,
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Positioned(
                      top: 7,
                      right: 25,
                      child: Text(
                        "السعر :  ${product.price} \$",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
