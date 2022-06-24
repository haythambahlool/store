import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/products.dart';
import 'package:store/product_card.dart';
import 'package:store/productinfo.dart';

class home_widget extends StatelessWidget {
  const home_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => product_card(
                      idex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => productinfo(
                                product: products[index],
                              ),
                            ));
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
