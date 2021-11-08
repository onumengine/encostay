import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/widgets/organisms/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HostHomeScreen extends StatefulWidget {
  const HostHomeScreen({Key? key}) : super(key: key);

  @override
  _HostHomeScreenState createState() => _HostHomeScreenState();
}

class _HostHomeScreenState extends State<HostHomeScreen> {
  late final List<StatelessWidget> components;
  late final List<PersistentBottomNavBarItem> persistentNavbarItems;
  late int _currentScreenIndex;
  late PersistentTabController persistentTabController;

  @override
  void initState() {
    super.initState();
    components = const [
      HomeComponent(),
      BookingsViewComponent(),
      ChatComponent(),
      HostProfileComponent(),
    ];
    persistentNavbarItems = <PersistentBottomNavBarItem>[
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_home_ic.png'),
          color: brandBrown,
        ),
        inactiveIcon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_home_ic.png'),
          color: brandWhite,
        ),
        title: 'Home',
        activeColorPrimary: brandWhite,
        activeColorSecondary: brandBrown,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_book_ic.png'),
          color: brandBrown,
        ),
        inactiveIcon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_book_ic.png'),
          color: brandWhite,
        ),
        title: 'Bookings',
        activeColorPrimary: brandWhite,
        activeColorSecondary: brandBrown,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_location_ic.png'),
          color: brandBrown,
        ),
        inactiveIcon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_location_ic.png'),
          color: brandWhite,
        ),
        title: 'Chat',
        activeColorPrimary: brandWhite,
        activeColorSecondary: brandBrown,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_user_ic.png'),
          color: brandBrown,
        ),
        inactiveIcon: ImageIcon(
          AssetImage(ASSET_IMAGE_PATH + 'navbar_user_ic.png'),
          color: brandWhite,
        ),
        title: 'Profile',
        activeColorPrimary: brandWhite,
        activeColorSecondary: brandBrown,
      ),
    ];
    _currentScreenIndex = 0;
    persistentTabController = PersistentTabController(initialIndex: 0);
  }

  /*
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: persistentTabController,
      screens: components,
      items: persistentNavbarItems,
      backgroundColor: brandBrown,
      navBarStyle: NavBarStyle.style7,
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: components.elementAt(_currentScreenIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex: 0,
        onTap: (index) {
          print('selected index $index');
        },
      ),
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
