

import 'package:flutter/material.dart';
import 'package:flutter_application_5/bmi.dart';

class height extends StatefulWidget {
  const height({super.key});

  @override
  State<height> createState() => _heightState();
}

class _heightState extends State<height> {
  @override
  Widget build(BuildContext context) {
    // double _currentSliderValue = 0;
    TextEditingController heightController = TextEditingController();
    TextEditingController weightController = TextEditingController();
    double BMIresult;
    void answer() {
      double height =
          double.parse(heightController.text) / 0.0254; // Convert cm to meters
      double weight = double.parse(weightController.text);
      setState(() {
        BMIresult = weight / (height * height);
      });
    }

    ;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ENTER DETAILS ",
          style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                width: 300.0,
                height: 100.0,
                child: TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "HEIGHT",
                    // hintText: "HEIGHT",
                    border: OutlineInputBorder(),
                    // icon: Icon(Icons.accessibility_new)
                  ),
                ),
              ),
              SizedBox(
                height: 00.0,
              ),
              SizedBox(
                width: 300.0,
                height: 100.0,
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "WEIGHT",
                    // hintText: "HEIGHT",
                    border: OutlineInputBorder(),
                    // icon: Icon(Icons.accessibility_new)
                  ),
                ),
              ),
              SizedBox(
                height: 00.0,
              ),
              // SizedBox(
              //   width: 300.0,
              //   height: 100.0,
              //   child: TextField(
              //     decoration: InputDecoration(
              //       labelText: "AGE",
              //       // hintText: "HEIGHT",
              //       border: OutlineInputBorder(),
              //       // icon: Icon(Icons.accessibility_new)
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 00.0,
              ),
              // Slider(
              //   value: _currentSliderValue,
              //   max: 100,
              //   divisions: 5,
              //   label: _currentSliderValue.round().toString(),
              //   onChanged: (double value) {
              //     setState(() {
              //       _currentSliderValue = value;
              //     });
              //   },
              // ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ))),
                child: Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                onPressed: () {
                  String height1 = heightController.text.trim();
                  String weight2 = weightController.text.trim();
                  double BMIresult = 0.0;
                  double height = double.parse(height1); // Convert cm to meters
                  // height = height / 0.0254;
                  double weight = double.parse(weight2);
               
                  setState(() {
                    BMIresult = weight * 10000 / (height * height);
                  });
               BMIresult = double.parse(BMIresult.toStringAsFixed(1)); 
               print(BMIresult);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMI(
                              bmi: BMIresult,
                            )),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
