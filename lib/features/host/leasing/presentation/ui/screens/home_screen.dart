import 'package:encostay/core/widgets/organisms/custom_bottom_navbar.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_home_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/events/host_home_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostHomeScreen extends StatefulWidget {
  const HostHomeScreen({Key? key}) : super(key: key);

  @override
  _HostHomeScreenState createState() => _HostHomeScreenState();
}

class _HostHomeScreenState extends State<HostHomeScreen> {
  late final List<StatelessWidget> components;
  late HostHomeBloc hostHomeBloc;

  @override
  void initState() {
    super.initState();
    hostHomeBloc = BlocProvider.of<HostHomeBloc>(context);
    components = const [
      HomeComponent(),
      BookingsViewComponent(),
      ChatComponent(),
      HostProfileComponent(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HostHomeBloc, HostHomeState>(
      builder: (context, hostHomeState) {
        if (hostHomeState is Default) {
          return Scaffold(
            body: components[hostHomeState.tabIndex],
            bottomNavigationBar: CustomBottomNavbar(
              onTap: (index) {
                hostHomeBloc.add(ChangeTab(tabIndex: index));
              },
            ),
          );
        } else {
          return Center(
            child: Text('Can\'t load the HostHomeScreen'),
          );
        }
      },
    );
  }
}

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HostHomeComponent'),
    );
  }
}

class BookingsViewComponent extends StatelessWidget {
  const BookingsViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('BookingsViewComponent'),
    );
  }
}

class ChatComponent extends StatelessWidget {
  const ChatComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ChatComponent'),
    );
  }
}

class HostProfileComponent extends StatelessWidget {
  const HostProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HostProfileComponent'),
    );
  }
}
