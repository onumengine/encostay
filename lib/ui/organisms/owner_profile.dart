import 'package:flutter/material.dart';

class OwnerProfileComponent extends StatefulWidget {
  const OwnerProfileComponent({Key? key}) : super(key: key);

  @override
  _OwnerProfileComponentState createState() => _OwnerProfileComponentState();
}

class _OwnerProfileComponentState extends State<OwnerProfileComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('OwnerProfileComponent'),
      ),
    );
  }
}
