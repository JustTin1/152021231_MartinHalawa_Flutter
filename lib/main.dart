import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/home.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/kalkulator.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/login.dart'; 
import 'package:grinding_flutter_edisi_tobat_web/screen/signup.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/splash.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/bmi.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/konversimatauang.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/checkout.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/kalori.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/LoginScreen': (context) => LoginScreen(),
        '/SignUp' : (context) => SignUp(),
        '/Home' : (context) => Home(),
        '/Bmi' : (context) => Bmi(), 
        '/Kalkulator' : (context) => Kalkulator(),
        '/KonversiMataUangApp' : (context) => KonversiMataUangApp(), 
        '/SplashScreenPage' : (context) => SplashScreenPage(), 
        '/CheckoutApp' : (context) => CheckoutApp(),
        '/CalorieCalculatorApp' : (context) => CalorieCalculatorApp(), 
      },
      home: SplashScreenPage(),
    );
  }
}
