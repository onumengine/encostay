import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/atoms/text_widget.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class EmailEntryComponent extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey _emailKey = GlobalKey();

  EmailEntryComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'Forgot password',
            style: medium18BrownDark,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'Enter your email for the verification preocess. We will send a 4-digit code to your email',
            style: instructionalTextStyleModal,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text('Email'),
          ),
        ),
        TextWidget(
          key: _emailKey,
          hintText: 'Enter your email',
          controller: _emailController,
          height: 55,
        ),
        BrandButton(
          height: 57,
          child: Text('Continue'),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Email submitted'),
              ),
            );
          },
        ),
      ],
    );
  }
}
