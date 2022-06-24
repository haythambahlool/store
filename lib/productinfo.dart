import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/products.dart';

class productinfo extends StatelessWidget {
  productinfo({Key? key, required this.product}) : super(key: key);

  @override
  late Product product;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "رجوع",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 480,
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 60,
                child: Container(
                  width: 270,
                  height: 270,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  top: 50,
                  right: 60,
                  height: 270,
                  width: 270,
                  child: Image.asset(product.image)),
              Positioned(
                top: 370,
                right: 140,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 410,
                right: 30,
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Positioned(
                top: 440,
                right: 30,
                child: Text(
                  product.subTitle,
                  style: TextStyle(fontSize: 18, color: kSecondaryColor),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
