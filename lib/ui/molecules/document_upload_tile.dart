import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class DocumentUploadTile extends StatefulWidget {
  String documentName;

  DocumentUploadTile({Key? key, required this.documentName}) : super(key: key);

  @override
  _DocumentUploadTileState createState() => _DocumentUploadTileState();
}

class _DocumentUploadTileState extends State<DocumentUploadTile> {
  bool _documentIsUploaded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _documentIsUploaded = !_documentIsUploaded;
        });
      },
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color((_documentIsUploaded) ? 0xffe2f4f3 : 0xfff8f9f9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.documentName,
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: lightTextColor,
              ),
            ),
            Image(
              image: AssetImage(
                ASSET_IMAGE_PATH +
                    ((_documentIsUploaded)
                        ? 'check_icon.png'
                        : 'uncheck_oval_icon.png'),
              ),
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
