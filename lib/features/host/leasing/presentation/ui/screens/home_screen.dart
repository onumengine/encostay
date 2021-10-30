import 'package:flutter/material.dart';

class HostHomeScreen extends StatefulWidget {
  const HostHomeScreen({Key? key}) : super(key: key);

  @override
  _HostHomeScreenState createState() => _HostHomeScreenState();
}

class _HostHomeScreenState extends State<HostHomeScreen> {
  late final List<StatelessWidget> _components;
  late int _currentComponentIndex;

  @override
  void initState() {
    super.initState();
    _components = const [
      HomeComponent(),
      BookingsViewComponent(),
      ChatComponent(),
      HostProfileComponent(),
    ];
    _currentComponentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _components.elementAt(_currentComponentIndex),
    );
  }
}

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HostHomeComponent'),
    );
  }
}

class BookingsViewComponent extends StatelessWidget {
  const BookingsViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('BookingsViewComponent'),
    );
  }
}

class ChatComponent extends StatelessWidget {
  const ChatComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ChatComponent'),
    );
  }
}

class HostProfileComponent extends StatelessWidget {
  const HostProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HostProfileComponent'),
    );
  }
}
