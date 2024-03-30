import 'package:flutter/material.dart';
import 'package:temperature_conversion/classes/converter.dart';

class MyConverterForm extends StatefulWidget {
  const MyConverterForm({super.key});


  @override
  State<MyConverterForm> createState() => _MyConverterForm();
}

class _MyConverterForm extends State<MyConverterForm> {
  double inputUnit = 0;
  double showData = 0;
  String unit = "C";
  double hotThreshold = 32;

  @override
  Widget build(BuildContext context) {
    void convertToCelsius() {
      setState(() {
        unit = "C";
        showData = Converter.convertToCelsius(inputUnit);
      });
    }

    void convertToFahrenheit() {
      setState(() {
        unit = "F";
        showData = Converter.convertToFahrenheit(inputUnit);
      });
    }

    // Determine the color based on the temperature value
    Color iconColor = showData >= hotThreshold ? Colors.red : Colors.blue;

    return Column(
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              inputUnit = value.isNotEmpty ? double.parse(value) : 0;
            });
          },
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.number,
          maxLength: 20,
          decoration: InputDecoration(
            labelText: 'Enter Temperature',
            prefixIcon: const Icon(Icons.thermostat_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: convertToCelsius,
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Converse to C", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: convertToFahrenheit,
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Converse to F", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
          child: Column(
            children: [
              const Text(
                "Temperature:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thermostat_outlined,
                    size: 20,
                    color: iconColor,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "${showData.toStringAsFixed(2)} $unit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: iconColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
