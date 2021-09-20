import 'package:encostay/blocs/booking_status/event.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingStatusBloc extends Bloc<BookingStatusEvent, BookingStatusState> {
  int? selectedTab;

  // ---------------------------------------------------------------------------

  BookingStatusBloc(BookingStatusState initialState) : super(initialState);

  @override
  BookingStatusState get initialState => DummyState();

  @override
  Stream<BookingStatusState> mapEventToState(BookingStatusEvent event) async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}