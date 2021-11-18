import 'dart:io';

import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/events/booking_event.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/states/booking_state.dart';
import 'package:encostay/core/widgets/atoms/custom_tab_indicator.dart';
import 'package:encostay/features/guest/booking/presentation/ui/components/booking_status.dart';
import 'package:encostay/features/guest/booking/presentation/ui/components/confirm_phone_number.dart';
import 'package:encostay/features/guest/booking/presentation/ui/components/host_chat.dart';
import 'package:encostay/features/guest/booking/presentation/ui/components/review.dart';
import 'package:encostay/features/guest/booking/presentation/ui/components/upload_id.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// To make the screens switch automatically, I'll store the [selectedCustomTabIndicator]
/// in the bloc and when a [SelectionEvent] is passed into the bloc, I'll change the value
/// of the [selectedCustomTabIndicator] in the bloc and rebuild the CustomTabIndicator.

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<Widget> _tabs = [
    BookingStatusComponent(),
    HostChatComponent(),
    ConfirmPhoneNumberComponent(),
    UploadIDComponent(),
    ReviewComponent(),
  ];
  late BookingBloc _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = BlocProvider.of<BookingBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.brandWhite,
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
            color: ColorPalette.brandBrown,
          ),
        ),
      ),
      body: BlocConsumer<BookingBloc, BookingState>(
        builder: (context, state) {
          if (state is DefaultBookingState) {
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
                        itemBuilder: (_, index) => (index ==
                                state.progressIndex)
                            ? SelectedTab(
                                index: index + 1,
                                onTap: () {
                                  _viewModel.add(
                                    TabSelectionEvent(selectedTabIndex: index),
                                  );
                                },
                              )
                            : UnselectedTab(
                                index: index + 1,
                                onTap: () {
                                  _viewModel.add(
                                    TabSelectionEvent(selectedTabIndex: index),
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
        listener: (context, state) {},
      ),
    );
  }
}
