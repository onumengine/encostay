import 'package:flutter/material.dart';

class CustomExpansionPanel extends StatefulWidget {
  final Widget header, body;
  bool canTapOnHeader, isExpanded;
  EdgeInsetsGeometry? headerPadding, bodyPadding;

  CustomExpansionPanel({
    Key? key,
    required this.header,
    required this.body,
    this.canTapOnHeader = false,
    this.isExpanded = false,
    this.headerPadding,
    this.bodyPadding,
  }) : super(key: key);

  @override
  _CustomExpansionPanelState createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (widget.canTapOnHeader)
                  ? () {
                      _toggleExpansion();
                    }
                  : null,
              child: Padding(
                padding: widget.headerPadding ??
                    const EdgeInsets.symmetric(horizontal: 24),
                child: widget.header,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                onPressed: () {
                  _toggleExpansion();
                },
                icon: Icon(
                  (_isExpanded)
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ),
            ),
          ],
        ),
        (_isExpanded)
            ? Padding(
                padding: widget.bodyPadding ??
                    const EdgeInsets.symmetric(horizontal: 24) +
                        const EdgeInsets.only(bottom: 19),
                child: widget.body,
              )
            : SizedBox(),
      ],
    );
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
}
