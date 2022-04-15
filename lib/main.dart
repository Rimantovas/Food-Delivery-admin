import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/home_page.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

//Client -> Client address SPn
//Store -> Stock SPva
//Courier PN1 Veikia
//Product PP1 Veikia

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorsTheme.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: ColorsTheme.primaryColor,
        )),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ColorsTheme.primaryColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: ColorsTheme.primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          floatingLabelStyle: const TextStyle(
            color: ColorsTheme.primaryColor,
          ),
        ),
        backgroundColor: ColorsTheme.bgColor,
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
            fontSize: 40,
            color: ColorsTheme.textColor,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.poppins(
            fontSize: 24,
            color: ColorsTheme.textColor,
            height: 1.3,
            fontWeight: FontWeight.bold,
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 19,
            color: ColorsTheme.textColor,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
          headline4: GoogleFonts.poppins(
            fontSize: 16,
            color: ColorsTheme.textColor,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 14,
            color: ColorsTheme.textColor,
            height: 1.4,
            fontWeight: FontWeight.normal,
          ),
          caption: GoogleFonts.poppins(
            fontSize: 10,
            color: Colors.white,
            height: 1.3,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
