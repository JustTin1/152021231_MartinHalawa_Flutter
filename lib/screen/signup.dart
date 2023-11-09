import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/login.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0, right: 10.0),
                  child: Image.asset(
                    'assets/images/1.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0, top: 20.0, right: 280.0, bottom: 40.0),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Full Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Membuat sudut text field menjadi bulat dengan radius 10.0
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Email Adress',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Membuat sudut text field menjadi bulat dengan radius 10.0
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Membuat sudut text field menjadi bulat dengan radius 10.0
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Membuat sudut text field menjadi bulat dengan radius 10.0
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                // Tambahkan kode untuk menangani login di sini
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Warna latar belakang tombol (hitam)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Atur padding tombol di sini
              ),
              child: Container(
                width: 400.0,
                height: 40.0,
                alignment: Alignment.center,
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Sudah punya akun?Sign in',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
