import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/sidebar.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/checkout.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 209, 224, 202),
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        drawer: Sidebar(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Discover'),
          ),
          backgroundColor: Color.fromARGB(255, 167, 167, 167),
        ),
        body: ContainerList(),
      ),
    );
  }
}

class ContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 0.0),
        child: ListView(
          children: <Widget>[
            ItemContainer(
              image: 'images/gambar1.png',
              itemName: 'Season Hoodie',
              price: 'Rp 275.000',
            ),
            ItemContainer(
              image: 'images/gambar2.png',
              itemName: 'My Chains Are Gone Hoodie',
              price: 'Rp 275.000',
            ),
            ItemContainer(
              image: 'images/gambar3.png',
              itemName: 'New Creation White Tshirt',
              price: 'Rp 175.000',
              onTap: () {
                // Navigasi ke halaman checkout.dart saat item diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
              },
            ),
            ItemContainer(  
              image: 'images/gambar4.png',
              itemName: 'New Creation Black Tshirt',
              price: 'Rp 175.000',
            ),
            ItemContainer(  
              image: 'images/gambar5.png',
              itemName: 'Blessed Tshirt',
              price: 'Rp 175.000',
            ),
            ItemContainer(  
              image: 'images/gambar6.png',
              itemName: 'Saved by Grace Tshirt',
              price: 'Rp 175.000',
            ),
          ],
        ),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  final String image;
  final String itemName;
  final String price;
  final VoidCallback? onTap; // Tambahkan callback untuk menangani ketika item diklik

  ItemContainer({required this.image, required this.itemName, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Memanggil fungsi onTap saat item diklik
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 254, 255),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/$image',
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              itemName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
