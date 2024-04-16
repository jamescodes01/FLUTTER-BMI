import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  final double bmi;

  const BMI({Key? key, required this.bmi}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    String bmiCategory = '';

    // Determine BMI category based on BMI value
    if (widget.bmi < 18.5) {
      bmiCategory = 'Underweight';
    } else if (widget.bmi >= 18.5 && widget.bmi < 24.9) {
      bmiCategory = 'Normal';
    } else if (widget.bmi >= 24.9 && widget.bmi < 29.9) {
      bmiCategory = 'Overweight';
    } else {
      bmiCategory = 'Obese';
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your BMI",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container( 
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI: ${widget.bmi.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'BMI Category: $bmiCategory',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              getBmiMessage(bmiCategory),
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to get BMI message based on category
  String getBmiMessage(String category) {
    switch (category) {
      case 'Underweight':
        return 'You are underweight. Consider gaining weight in a healthy way.';
      case 'Normal':
        return 'Your BMI is normal. Keep maintaining a healthy lifestyle.';
      case 'Overweight':
        return 'You are overweight. Consider losing weight for better health.';
      case 'Obese':
        return 'You are obese. Take immediate steps to improve your health.';
      default:
        return '';
    }
  }
}
