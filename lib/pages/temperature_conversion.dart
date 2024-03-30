import 'package:flutter/material.dart';
import '../widgets/converter_form.dart';

class TemperatureConversion extends StatefulWidget{

  const TemperatureConversion({super.key});

  @override
  State createState() => _TemperatureConversion();
}

class _TemperatureConversion extends State<TemperatureConversion>{

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(15),child: MyConverterForm());
  }

}

