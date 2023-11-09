import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/chart.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/home.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/kalori.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/login.dart'; 
import 'package:grinding_flutter_edisi_tobat_web/screen/signup.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/splash.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/konversimatauang.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/bmi.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/kalkulator.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/profile.dart';


class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Martin Halawa',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              'martin@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil.jpg'), // Ganti dengan path gambar Anda
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), // Ganti dengan path gambar background Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Kalkulator',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kalkulator()), 
                  );
            },
          ),
          ListTile(
            title: Text(
              'BMI',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi()), 
                  );  
            },
          ),
          ListTile(
            title: Text(
              'Konversi Mata Uang',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KonversiMataUangApp()), 
                  );
            },
          ),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileApp()), 
                  );
            },
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()), 
                  );
            },
          ),
          ListTile(
            title: Text(
              'Kalori',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalorieCalculatorApp()), 
                  );
            },
          ),
          ListTile(
            title: Text(
              'Log Out',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreenPage()), 
                  );
            },
          ),
        ],
      ),
    );
  }
}
