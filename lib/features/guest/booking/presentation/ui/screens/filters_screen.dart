import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/molecules/custom_expansion_panel.dart';
import 'package:encostay/core/widgets/molecules/document_upload_tile.dart';
import 'package:encostay/core/utilities/color_palette.dart';
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
      backgroundColor: ColorPalette.brandWhite,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: ColorPalette.brandWhite,
        foregroundColor: ColorPalette.lightTextColor,
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
                    color: ColorPalette.brandLightGreen,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'This is a work trip',
                        style: TextStyle(
                          height: 25 / 14,
                          color: ColorPalette.lightTextColor,
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
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 24) +
                        EdgeInsets.only(top: 20, bottom: 35),
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: ColorPalette.paleTextColor,
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
                            color: ColorPalette.lightTextColor,
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
                            color: ColorPalette.paleTextColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(height: 13),
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: ColorPalette.brandPaleGreen,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Type of place',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 23 / 14,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        SizedBox(height: 27),
                      ],
                    ),
                  );
                }),
                SizedBox(height: 13),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'Accessibility',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'Facilities',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'Property type',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'Unique stays',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'House rules',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: Column(
                      children: [
                        'Suitable for events',
                        'Pets allowed',
                        'Smoking allowed',
                      ]
                          .map<DocumentUploadTile>(
                            (e) => DocumentUploadTile(documentName: e),
                          )
                          .toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorPalette.greyCardColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CustomExpansionPanel(
                    header: Text(
                      'Host language',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                      ),
                    ),
                    body: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: BrandButton(
                        height: 58,
                        child: Text(
                          'Cancellation',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 23 / 14,
                            color: ColorPalette.paleTextColor,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(RouteNames.CANCELLATION);
                        },
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          border: Border.all(
                            width: 1,
                            color: ColorPalette.paleTextColor.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: BrandButton(
                        height: 58,
                        child: Text(
                          'Show 300+ stays',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 23 / 14,
                            color: ColorPalette.brandWhite,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed(RouteNames.OWNER);
                        },
                        decoration: BoxDecoration(
                          color: ColorPalette.brandBrown,
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
