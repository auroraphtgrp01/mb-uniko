import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import '../../../../../generated/colors.gen.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../../supportive/presentation/pages/supportive_page.dart';

@RoutePage()
class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: const TabBarBody(),
    );
  }
}

class TabBarBody extends StatefulWidget {
  const TabBarBody({super.key});

  @override
  State<TabBarBody> createState() => _TabBarBodyState();
}

class _TabBarBodyState extends State<TabBarBody> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SupportivePage(title: 'a', content: 'a'),
    SizedBox.shrink(),
    SettingsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    // if (index == 2) {
    //   if (Storage.user != null) {
    //     context.router.push(const PostRoute());
    //   } else {
    //     AppDialogs.show(
    //       type: AlertType.notice,
    //       titleAction1: context.s.close,
    //       titleAction2: context.s.login,
    //       content: context.s.login_please,
    //       action2: () {
    //         Asuka.showModalBottomSheet(
    //           builder: (BuildContext context) {
    //             return const AuthPage();
    //           },
    //           isDismissible: true,
    //           elevation: 10,
    //           isScrollControlled: true,
    //         );
    //       },
    //     );
    //   }
    // } else if (index == 3) {
    //   if (Storage.user == null) {
    //     AppDialogs.show(
    //       type: AlertType.notice,
    //       titleAction1: context.s.close,
    //       titleAction2: context.s.login,
    //       content: context.s.login_please,
    //       action2: () {
    //         Asuka.showModalBottomSheet(
    //           builder: (BuildContext context) {
    //             return const AuthPage();
    //           },
    //           isDismissible: true,
    //           elevation: 10,
    //           isScrollControlled: true,
    //         );
    //       },
    //     );
    //   } else {
    //     setState(() {
    //       _selectedIndex = index;
    //     });
    //   }
    // } else {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: Assets.icons.tabbarHome.svg(
            //   // color: _selectedIndex == 0
            //   //     ? ColorName.primary
            //   //     : ColorName.whiteF1F1F1,
            //   colorFilter: ColorFilter.mode(
            //     _selectedIndex == 0 ? ColorName.primary : ColorName.whiteF1F1F1,
            //     BlendMode.srcIn,
            //   ),
            // ),
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? ColorName.primary : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // icon: Assets.icons.tabbarCart.svg(
            //   // color: _selectedIndex == 1
            //   //     ? ColorName.primary
            //   //     : ColorName.whiteF1F1F1,
            //   colorFilter: ColorFilter.mode(
            //     _selectedIndex == 1 ? ColorName.primary : ColorName.whiteF1F1F1,
            //     BlendMode.srcIn,
            //   ),
            // ),
            icon: Icon(
              Icons.shopping_cart,
              color: _selectedIndex == 1 ? ColorName.primary : Colors.black,
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            // icon: Assets.icons.add.svg(
            //   width: 56.w,
            // ),
            icon: Icon(
              Icons.add,
              color: ColorName.primary,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            // icon: Assets.icons.tabbarNotification.svg(
            //   // color: _selectedIndex == 3
            //   //     ? ColorName.primary
            //   //     : ColorName.whiteF1F1F1,

            //   colorFilter: ColorFilter.mode(
            //     _selectedIndex == 3 ? ColorName.primary : ColorName.whiteF1F1F1,
            //     BlendMode.srcIn,
            //   ),
            // ),
            icon: Icon(
              Icons.notifications,
              color: _selectedIndex == 3 ? ColorName.primary : Colors.black,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            // icon: Assets.icons.tabbarProfile.svg(
            //   // color: _selectedIndex == 4
            //   //     ? ColorName.primary
            //   //     : ColorName.whiteF1F1F1,
            //   colorFilter: ColorFilter.mode(
            //     _selectedIndex == 4 ? ColorName.primary : ColorName.whiteF1F1F1,
            //     BlendMode.srcIn,
            //   ),
            // ),
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4 ? ColorName.primary : Colors.black,
            ),
            label: 'Personal',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorName.primary,
        // unselectedItemColor: ColorName.whiteF1F1F1,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
    );
  }
}
