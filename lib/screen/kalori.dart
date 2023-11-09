import 'package:flutter/material.dart';
import 'package:grinding_flutter_edisi_tobat_web/screen/sidebar.dart';

void main() => runApp(CalorieCalculatorApp());

class CalorieCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorie Calculator',
      home: CalorieCalculatorScreen(),
    );
  }
}

class CalorieCalculatorScreen extends StatefulWidget {
  @override
  _CalorieCalculatorScreenState createState() => _CalorieCalculatorScreenState();
}

class _CalorieCalculatorScreenState extends State<CalorieCalculatorScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  double activityLevel = 1.2;
  double result = 0;

  void calculateCalories() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;
    int age = int.tryParse(ageController.text) ?? 0;

    if (weight > 0 && height > 0 && age > 0) {
      double basalMetabolicRate = 10 * weight + 6.25 * height - 5 * age + 5;
      double totalCalories = basalMetabolicRate * activityLevel;
      setState(() {
        result = totalCalories;
      });
    } else {
      setState(() {
        result = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('Calorie Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            SizedBox(height: 20),
            DropdownButton<double>(
              value: activityLevel,
              onChanged: (newValue) {
                setState(() {
                  activityLevel = newValue!;
                });
              },
              items: [
                DropdownMenuItem<double>(
                  value: 1.2,
                  child: Text('Sedentary (Little to no exercise)'),
                ),
                DropdownMenuItem<double>(
                  value: 1.375,
                  child: Text('Lightly active (Light exercise/sports 1-3 days/week)'),
                ),
                DropdownMenuItem<double>(
                  value: 1.55,
                  child: Text('Moderately active (Moderate exercise/sports 6-7 days/week)'),
                ),
                DropdownMenuItem<double>(
                  value: 1.725,
                  child: Text('Very active (Hard exercise/sports & physical job or 2x training)'),
                ),
                DropdownMenuItem<double>(
                  value: 1.9,
                  child: Text('Extra active (Very hard exercise & physical job or 2x-3x training)'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateCalories();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Estimated Daily Calories: $result',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
