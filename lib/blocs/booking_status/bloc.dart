import 'package:encostay/blocs/booking_status/event.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/models/payment_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  int? _selectedTabindex;
  late DateTime checkInDate, checkOutDate;
  late List<PaymentCard> availableCards;

  // ---------------------------------------------------------------------------

  BookingBloc(BookingState initialState) : super(initialState);

  @override
  Stream<BookingState> mapEventToState(BookingEvent event) async* {
    if (event is TabSelectionEvent) {
      _switchToTab(event.selectedTabIndex!);
      yield DefaultBookingState(progressIndex: _selectedTabindex!);
    }
  }

  void _switchToTab(int tabIndex) {
    _selectedTabindex = tabIndex;
  }
}
