import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class ActiveDocumentUploadTile extends StatefulWidget {
  String documentName;

  ActiveDocumentUploadTile({Key? key, required this.documentName})
      : super(key: key);

  @override
  _ActiveDocumentUploadTileState createState() =>
      _ActiveDocumentUploadTileState();
}

class _ActiveDocumentUploadTileState extends State<ActiveDocumentUploadTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: brandLight,
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
          ImageIcon(
            AssetImage(ASSET_IMAGE_PATH + 'check_icon.png'),
            color: brandBrown,
            size: 24,
          ),
        ],
      ),
    );
  }
}
