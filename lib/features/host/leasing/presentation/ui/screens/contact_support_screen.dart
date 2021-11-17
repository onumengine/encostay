import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/contact_support_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/contact_support_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ContactSupportScreen extends StatelessWidget {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0);
  final List<String> _messages = [
    'Hello I\'m looking forward to having you stay in my home. Please let me know when you expect to arrive. \n\nRobert.',
    'On Sunday the 10th between 3:15 and 5:00pm',
  ];

  ContactSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocConsumer<ContactSupportBloc, ContactSupportState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Helena Reynolds',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 24 / 15,
              ),
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: brandBrown,
            elevation: 0,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ListView(
                      controller: _scrollController,
                      children: [
                        SizedBox(
                          height: 42,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 44,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                IMAGES_PATH + 'owner.png',
                                height: 37,
                                width: 37,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: brandLight,
                                ),
                                child: Text(
                                  _messages[0],
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                    color: lightTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ...(_messages.skip(1).map(
                              (message) => Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      color: Color(0xffe2f4f3),
                                    ),
                                    child: Text(
                                      message,
                                      style: TextStyle(
                                        fontSize: 12,
                                        height: 22 / 12,
                                        color: lightTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 36,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24) +
                      EdgeInsets.only(bottom: 32),
                  child: Container(
                    height: 64,
                    width: screenSize.width - 48,
                    padding: EdgeInsets.only(left: 24, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: brandWhite,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 40,
                          color: Color(0x40dde0e8),
                        ),
                      ],
                      border: Border.fromBorderSide(BorderSide.none),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Type your message...',
                            ),
                            onSubmitted: (message) {
                              if (message.length > 0) {
                                _sendMessage(message);
                                _clearController(_messageController);
                              }
                              _scrollToBottom(_scrollController);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            if (_messageController.text.length > 0) {
                              _sendMessage(_messageController.text);
                              _clearController(_messageController);
                            }
                            _scrollToBottom(_scrollController);
                          },
                          fillColor: brandDarkGreen,
                          shape: CircleBorder(),
                          elevation: 0,
                          constraints: BoxConstraints(
                            minWidth: 48,
                            minHeight: 48,
                          ),
                          child: SvgPicture.asset(
                              COLORED_VECTORS_PATH + 'ic_send_msg.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }

  void _sendMessage(String message) {
    _messages.add(message);
  }

  void _clearController(TextEditingController controller) {
    controller.clear();
  }

  void _scrollToBottom(ScrollController scrollController) {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 200),
      curve: Curves.bounceIn,
    );
  }
}
