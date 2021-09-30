import 'package:encostay/ui/molecules/document_upload_active_tile.dart';
import 'package:encostay/ui/molecules/document_upload_tile.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UploadIDComponent extends StatefulWidget {
  const UploadIDComponent({Key? key}) : super(key: key);

  @override
  _UploadIDComponentState createState() => _UploadIDComponentState();
}

class _UploadIDComponentState extends State<UploadIDComponent> {
  List<String>? _listOfCountries = [
    'Namibia',
    'Nicaragua',
    'Nigeria',
    'Niger',
  ];
  String? _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = _listOfCountries![2];
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 42,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Before you book, let\'s add your ID',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'A government ID helps us check that you\'re really you. It also helps us keep secure, fight fraud and more.',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: Color(0xff333333),
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            height: 66,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfff8f9f9),
            ),
            child: Row(
              children: [
                SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_nigeria_flag.svg'),
                SizedBox(
                  width: 33,
                ),
                Flexible(
                  child: DropdownButton<String>(
                    value: _selectedCountry,
                    onChanged: (dropdownValue) {
                      setState(() {
                        _selectedCountry = dropdownValue;
                      });
                    },
                    items: <DropdownMenuItem<String>>[
                      ...(_listOfCountries!
                          .map(
                            (country) => DropdownMenuItem<String>(
                              child: Text('${country}'),
                              value: country,
                            ),
                          )
                          .toList()),
                    ],
                    hint: Text(
                      'Choose country',
                      style: TextStyle(
                        fontSize: 12,
                        height: 22 / 12,
                        color: lightTextColor,
                      ),
                    ),
                    disabledHint: Text(
                      'Currently disabled',
                      style: TextStyle(
                        fontSize: 12,
                        height: 22 / 12,
                        color: paleTextColor,
                      ),
                    ),
                    underline: SizedBox(
                      height: 0,
                    ),
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    isExpanded: true,
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          DocumentUploadTile(
            documentName: 'Driver\'s license',
          ),
          SizedBox(
            height: 8,
          ),
          DocumentUploadTile(documentName: 'Passport'),
          SizedBox(
            height: 8,
          ),
          DocumentUploadTile(documentName: 'Identity card'),
          SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(VECTORS_ROOT_PATH + 'lock.svg'),
              SizedBox(
                width: 15,
              ),
              Text(
                'Your ID isn\'t shared with other people who use the app',
                style: TextStyle(
                  fontSize: 10,
                  height: 18 / 10,
                  color: Color(0xffa1a0a6),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 29,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  backgroundColor: brandWhite,
                  scrollable: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  content: Container(
                    width: screenSize.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 42,
                        ),
                        ActiveDocumentUploadTile(
                            documentName: 'Driver\'s license'),
                        SizedBox(
                          height: 17,
                        ),
                        SvgPicture.asset(VECTORS_ROOT_PATH + 'file_upload.svg'),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: brandOrange),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                                VECTORS_ROOT_PATH + 'camera.svg'),
                          ),
                        ),
                        SizedBox(
                          height: 57,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Pressed okay');
                          },
                          child: Container(
                            width: screenSize.width / 2.2,
                            padding: EdgeInsets.all(17),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: brandBrown,
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  height: 23 / 14,
                                  color: brandWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Container(
              width: screenSize.width / 2.2,
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: brandBrown,
              ),
              child: Center(
                child: Text(
                  'Okay',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: brandWhite,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
