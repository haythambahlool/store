import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/constants.dart';
import 'package:store/home_widget.dart';
import 'package:store/models/products.dart';
import 'package:store/product_card.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: myappbar(),
      body: home_widget(),
    );
  }

  AppBar myappbar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kPrimaryColor,
      title: Text(
        "مرحبا بك في متجر الالكترونيات",
        style: GoogleFonts.getFont("Almarai"),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            Icons.menu,
            color: kTextColor,
          ),
        )
      ],
    );
  }
}
// SafeArea(
//         bottom: false,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             Expanded(
//                 child: Stack(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: kBackgroundColor,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(70),
//                           topRight: Radius.circular(70))),
//                   child: Column(
//                     children: [product_card(product: products[1])],
//                   ),
//                 )
//               ],
//             )),
//           ],
//         ),
//       ),