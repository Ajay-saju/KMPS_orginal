import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kmps/controller/side_drawer/side_drawer_controller.dart';
import 'package:kmps/main.dart';
import 'fragment/collection/collection_fregments.dart';
import 'fragment/dashboard/dashboard_fragment.dart';
import 'fragment/dispatch/dispatch_fragment.dart';
import 'fragment/report/report_fragment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final _pageItem = [
    const DashboardFragment(),
    const Collection(),
    const DispatchFragment(),
    const ReportFragment(),
  ];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    // print (sessionlog.getString('token'));
    return Scaffold(
        body: _pageItem[_selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          showUnselectedLabels: true,
          elevation: 40,
          selectedFontSize: 16,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/HomeNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.grey,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/HomeNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.blue,
                ),
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/SettingNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.grey,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/SettingNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.blue,
                ),
              ),
              label: "Collection",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/Dispatch.svg',
                  // ignore: deprecated_member_use
                  color: Colors.grey,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/Dispatch.svg',
                  // ignore: deprecated_member_use
                  color: Colors.blue,
                ),
              ),
              label: "Dispatch",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/ReportNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.grey,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/ReportNavigation.svg',
                  // ignore: deprecated_member_use
                  color: Colors.blue,
                ),
              ),
              label: "Report",
            ),
          ],
          currentIndex: _selectedItem,
          onTap: (setValue) {
            _selectedItem = setValue;
            setState(() {});
          },
        ));
  }
}
