import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/widgets/organisms/custom_bottom_navbar.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_home_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_home_component_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_profile_component_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/events/host_home_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_home_state.dart';
import 'package:encostay/features/host/leasing/presentation/ui/components/host_home_component.dart';
import 'package:encostay/features/host/leasing/presentation/ui/components/host_profile_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostHomeScreen extends StatelessWidget {
  final List<StatelessWidget> components = [
    BlocProvider<HostHomeComponentBloc>(
      create: (context) => HostHomeComponentBloc(),
      child: HostHomeComponent(),
    ),
    BookingsViewComponent(),
    ChatComponent(),
    BlocProvider<HostProfileComponentBloc>(
      create: (context) => HostProfileComponentBloc(),
      child: HostProfileComponent(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final HostHomeBloc hostHomeBloc = BlocProvider.of<HostHomeBloc>(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: brandSecondBackground,
      body: BlocBuilder<HostHomeBloc, HostHomeState>(
        builder: (context, hostHomeState) {
          if (hostHomeState is Default) {
            return components[hostHomeState.tabIndex];
          } else {
            return Center(
              child: Text('Can\'t load the HostHomeScreen'),
            );
          }
        },
      ),
      bottomNavigationBar: CustomBottomNavbar(
        onTap: (index) {
          hostHomeBloc.add(ChangeTab(tabIndex: index));
        },
      ),
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
