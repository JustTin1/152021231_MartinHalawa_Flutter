import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/sidebar.dart';

void main() => runApp(KonversiMataUangApp());

class KonversiMataUangApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Converter',
      home: KonversiMataUangScreen(),
    );
  }
}

class KonversiMataUangScreen extends StatefulWidget {
  @override
  _KonversiMataUangScreenState createState() => _KonversiMataUangScreenState();
}

class _KonversiMataUangScreenState extends State<KonversiMataUangScreen> {
  TextEditingController usdController = TextEditingController();
  TextEditingController rupiahController = TextEditingController();
  TextEditingController ringgitController = TextEditingController();
  double usdToRupiahRate = 15000; // Kurs USD ke Rupiah
  double usdToRinggitRate = 4.2; // Kurs USD ke Ringgit

  void convertCurrency() {
    double usdAmount = double.tryParse(usdController.text) ?? 0.0;
    double rupiahAmount = usdAmount * usdToRupiahRate;
    double ringgitAmount = usdAmount * usdToRinggitRate;
    rupiahController.text = rupiahAmount.toStringAsFixed(2);
    ringgitController.text = ringgitAmount.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Konversi Mata Uang'),
        ),
        backgroundColor: Color.fromARGB(255, 167, 167, 167),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter USD'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                convertCurrency();
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: rupiahController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Rupiah'),
              readOnly: true,
            ),
            SizedBox(height: 10),
            TextField(
              controller: ringgitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Ringgit'),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
