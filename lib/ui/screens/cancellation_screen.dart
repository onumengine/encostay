import 'package:flutter/material.dart';

class CancellationScreen extends StatefulWidget {
  const CancellationScreen({Key? key}) : super(key: key);

  @override
  _CancellationScreenState createState() => _CancellationScreenState();
}

class _CancellationScreenState extends State<CancellationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Cancellation screen'),
      ),
    );
  }
}
