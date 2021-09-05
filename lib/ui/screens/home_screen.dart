import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Hey Olaitan!'),
                        Text('let\'s find your best residence!'),
                      ],
                    ),
                    CircleAvatar(),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
