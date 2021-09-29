import 'package:encostay/blocs/booking_status/event.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/models/payment_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingStatusBloc extends Bloc<BookingStatusEvent, BookingStatusState> {
  int? _selectedTabindex;
  late DateTime checkInDate, checkOutDate;
  late List<PaymentCard> availableCards;

  // ---------------------------------------------------------------------------

  BookingStatusBloc(BookingStatusState initialState) : super(initialState);

  @override
  Stream<BookingStatusState> mapEventToState(BookingStatusEvent event) async* {
    if (event is TabSelectionEvent) {
      _switchToTab(event.selectedTabIndex!);
      yield DefaultState(progressIndex: _selectedTabindex!);
    }
  }

  void _switchToTab(int tabIndex) {
    _selectedTabindex = tabIndex;
  }
}
