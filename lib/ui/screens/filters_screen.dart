import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: brandWhite,
        foregroundColor: lightTextColor,
        elevation: 0,
        title: Text('Filters'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                SizedBox(height: 31),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 21) +
                      EdgeInsets.only(left: 24, right: 21),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: brandLightGreen,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'This is a work trip',
                        style: TextStyle(
                          height: 25 / 14,
                          color: lightTextColor,
                        ),
                      ),
                      Switch.adaptive(
                        value: _isSelected,
                        onChanged: (newValue) {
                          setState(() {
                            _isSelected = newValue;
                          });
                        },
                        activeColor: Color(0xff008680),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24) +
                      EdgeInsets.only(top: 20, bottom: 35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: paleTextColor,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Price range',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                          color: lightTextColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('\$10 - \$40'),
                      SizedBox(height: 18),
                      Text(
                        'The average nightly price is \$76',
                        style: TextStyle(
                          fontSize: 12,
                          height: 22 / 12,
                          color: paleTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
