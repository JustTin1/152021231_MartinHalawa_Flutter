import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/sidebar.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _name = 'Martin Halawa';
  String _institution = 'Institut Teknologi Nasional Bandung';
  String _studyProgram = 'Informatika - 152021231';
  String _email = 'martinhalawa12345@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('My Profile'),
        ),
        backgroundColor: Color.fromARGB(255, 167, 167, 167),
      ),
      drawer: Sidebar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _showEditProfilePictureDialog(context);
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profil.jpg'), // Ganti dengan path foto profil Anda
              ),
            ),
            SizedBox(height: 20),
            Text(
              _name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              _institution,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Text(
              _studyProgram,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Text(
              _email,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showEditProfilePictureDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button for close
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile Picture'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Do you want to edit your profile picture?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Edit'),
              onPressed: () {
                // Implement logic for editing profile picture here
                // ...
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
