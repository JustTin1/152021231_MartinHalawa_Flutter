import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(CheckoutApp());

class CheckoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Produk'),
        ),
        body: ProductDetailsScreen(),
      ),
    );
  }
}

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> images = [
    'assets/images/gambar3.png',
  ];

  int _currentIndex = 0;

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: _nextImage,
            child: ProductImage(images[_currentIndex]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ProductDescription(),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: CheckoutButton(context),
        ),
      ],
    );
  }

  Widget ProductImage(String imageUrl) {
    return Container(
      color: Colors.grey[300],
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Center(child: Icon(Icons.error));
        },
      ),
    );
  }

  Widget ProductDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nama Item Gambar',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Deskripsi produk akan ditampilkan di sini.',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Harga: \$100',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget CheckoutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
      child: Text('Checkout'),
    );
  }
}
