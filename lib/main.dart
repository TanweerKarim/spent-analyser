import "package:flutter/material.dart";
import 'package:spendanalyser/screens/firstpage.dart';
import 'package:spendanalyser/screens/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const FirstPageView(),
  ));
}

class SpentAnalyser extends StatefulWidget {
  const SpentAnalyser({Key? key}) : super(key: key);

  @override
  State<SpentAnalyser> createState() => _SpentAnalyserState();
}

class _SpentAnalyserState extends State<SpentAnalyser> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Material(
          child: Center(
        child: Text("Welcome"),
      )),
    );
  }
}
