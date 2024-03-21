import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 55, fontWeight: FontWeight.bold, color: Colors.white);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(
            255, 108, 85, 45), // Changed background color to green
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '0',
                style: textStyle,
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true), // Only accept numbers with decimals and sign
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.green,
                cursorWidth: 2.0,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12.0), // Add padding
                  border: OutlineInputBorder(
                    // Add rounded border
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Please enter the amount in INR',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on, color: Colors.red),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  print('button clicked');
                },
                child: Text('convert'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, // Set the background color
                  foregroundColor: Colors.white, // Set the foreground color
                  minimumSize: Size(200, 50), // Set the size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
