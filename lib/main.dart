import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double result = 0;
    TextStyle textStyle = TextStyle(
        fontSize: 55,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 129, 115, 115));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("currency conveter"),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 129, 115, 115),
        ),
        backgroundColor: Color.fromARGB(255, 82, 66, 39),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: textStyle,
              ),
              TextField(
                controller: myController,
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.green,
                cursorWidth: 2.0,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Please enter the amount in INR',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on,
                      color: Color.fromARGB(255, 92, 215, 112)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  print(myController.text);
                  setState(() {
                    result = double.parse(myController.text);
                  });
                  FocusScope.of(context).unfocus(); // Dismiss the keyboard
                },
                child: Text('convert'),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 76, 175, 84),
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
