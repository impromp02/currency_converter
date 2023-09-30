import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Currency Converter',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    result = double.parse(value) * 81;
                  });
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    hintText: 'Amount in INR',
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                      size: 28,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: border,
                    focusedBorder: border,
                    enabledBorder: border),
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
              ),
            )
          ],
        ));
  }
}
