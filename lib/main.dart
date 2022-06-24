import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Home_screen.dart';
import 'package:store/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'elctrical store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        primaryColor: kPrimaryColor,
        // ignore: deprecated_member_use
        accentColor: kSecondaryColor,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      home: Home_screen(),
    );
  }
}
