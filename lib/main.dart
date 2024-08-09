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
        theme: ThemeData.dark(useMaterial3: true).copyWith(
            colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.dark,
        )),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
