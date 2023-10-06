import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 126, 55, 83), // Set the background color here
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Result: $result Ethiopia Birr',
              style: TextStyle(fontSize: 24),
            ),
            TextField(
              controller: myController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter the amount in USD'),
            ),
            ElevatedButton(
              child: Text('Convert'),
              onPressed: () {
                setState(() {
                  result = double.parse(myController.text) *
                      115; // Conversion rate to Ethiopia Birr
                });
                FocusScope.of(context).unfocus(); // Dismiss the keyboard
              },
            ),
          ],
        ),
      ),
    );
  }
}
