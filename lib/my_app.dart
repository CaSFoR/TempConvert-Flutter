import 'package:flutter/material.dart';
import 'pages/temperature_conversion.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Temperature Conversion")
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  const MyHomePage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle:true,
        title: Text(title,style: const TextStyle(color: Colors.white,fontSize: 26)),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: const TemperatureConversion(),
    );
  }

}




