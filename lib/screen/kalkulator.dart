import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/sidebar.dart';

void main() {
  runApp(Kalkulator());
}

class Kalkulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 209, 224, 202),
        fontFamily: 'Roboto',
      ),
      home: KalkulatorForm(), // Corrected the class name here
    );
  }
}

class KalkulatorForm extends StatefulWidget {
  @override
  _KalkulatorFormState createState() => _KalkulatorFormState(); // Corrected the class name here
}

class _KalkulatorFormState extends State<KalkulatorForm> { // Corrected the class name here
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String result = '';

double calcResult = 0.0; // Provide an initial value for calcResult

void calculate(String operator) {
  double num1 = double.tryParse(number1Controller.text) ?? 0.0;
  double num2 = double.tryParse(number2Controller.text) ?? 0.0;

  if (operator == '+') {
    calcResult = num1 + num2;
  } else if (operator == '-') {
    calcResult = num1 - num2;
  } else if (operator == '*') {
    calcResult = num1 * num2;
  } else if (operator == '/') {
    calcResult = (num2 != 0) ? num1 / num2 : double.infinity;
  }

  setState(() {
    result = 'Hasil: $calcResult';
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Kalkulator'),
        ),
        backgroundColor: Color.fromARGB(255, 167, 167, 167),
      ),
      drawer: Sidebar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Angka 1',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Angka 2',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => calculate('+'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 139, 139),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('-'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 139, 139),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('*'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 139, 139),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text('*'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('/'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 139, 139),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text('/'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                result,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
