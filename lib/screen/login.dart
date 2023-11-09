import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/home.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/signup.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatelessWidget {
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
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0, top: 20.0, right: 300, bottom: 40.0),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Memeriksa apakah username dan password benar
              if (usernameController.text == 'martin' && passwordController.text == 'martin') {
                // Navigasi ke halaman home jika benar
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()), // Ganti Home() dengan halaman home yang sesuai
                );
              } else {
                // Menampilkan pesan kesalahan jika username atau password salah
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Username atau password salah')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            ),
            child: Container(
              width: 400.0,
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text(
              'Belum punya akun? Daftar sekarang!',
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
