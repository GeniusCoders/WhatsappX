import 'package:WhatsAppX/screens/home/home_page.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkModeOn = true;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: darkModeOn ? backgroundColor : whiteColor,
        statusBarIconBrightness:
            darkModeOn ? Brightness.light : Brightness.dark));
    return MaterialApp(
        title: 'WhatsAppX',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: MaterialColor(0xFF06A88E, getSwatch(primaryColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
