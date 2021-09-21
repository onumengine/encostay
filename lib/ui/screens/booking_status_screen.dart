import 'dart:io';

import 'package:encostay/blocs/booking_status/bloc.dart';
import 'package:encostay/blocs/booking_status/event.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/ui/atoms/custom_tab_indicator.dart';
import 'package:encostay/ui/molecules/booking_status_modal.dart';
import 'package:encostay/ui/organisms/booking_status.dart';
import 'package:encostay/ui/organisms/confirm_phone_number.dart';
import 'package:encostay/ui/organisms/host_chat.dart';
import 'package:encostay/ui/organisms/upload_id.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// To make the screens switch automatically, I'll store the [selectedCustomTabIndicator]
/// in the bloc and when a [SelectionEvent] is passed into the bloc, I'll change the value
/// of the [selectedCustomTabIndicator] in the bloc and rebuild the CustomTabIndicator.

class BookingStatusScreen extends StatefulWidget {
  const BookingStatusScreen({Key? key}) : super(key: key);

  @override
  _BookingStatusScreenState createState() => _BookingStatusScreenState();
}

class _BookingStatusScreenState extends State<BookingStatusScreen> {
  List<Widget> _tabs = [
    BookingStatusComponent(),
    HostChatComponent(),
    ConfirmPhoneNumberComponent(),
    UploadIDComponent(),
    Container(),
  ];
  late BookingStatusBloc _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = BlocProvider.of<BookingStatusBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: brandWhite,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              (Platform.isIOS)
                  ? Icons.arrow_back_ios_rounded
                  : Icons.arrow_back_rounded,
              color: brandBrown,
            ),
          ),
        ),
        body: BlocConsumer<BookingStatusBloc, BookingStatusState>(
          builder: (context, state) {
            if (state is DefaultState) {
              return Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: double.infinity,
                        height: 79,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) =>
                              (index == state.progressIndex)
                                  ? SelectedTab(
                                      index: index + 1,
                                      onTap: () {
                                        _viewModel.add(
                                          TabSelectionEvent(
                                              selectedTabIndex: index),
                                        );
                                      },
                                    )
                                  : UnselectedTab(
                                      index: index + 1,
                                      onTap: () {
                                        _viewModel.add(
                                          TabSelectionEvent(
                                              selectedTabIndex: index),
                                        );
                                      },
                                    ),
                          separatorBuilder: (_, index) => SizedBox(
                            width: 7,
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ),
                    Expanded(
                      child: _tabs[state.progressIndex],
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
          buildWhen: (previousState, nextState) {
            /*
            if (previousState is DefaultState && nextState is DefaultState) {
              return previousState.progressIndex != nextState.progressIndex;
            }
            */
            return true;
          },
          listener: (context, state) {},
        ));
  }
}
