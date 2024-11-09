import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customField/const.dart';
import 'Home.dart';
import 'Mycart.dart';
import 'Profile.dart';
import 'Search.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<Widget> _widgetOptions = <Widget>[
    Home(),
     Ser(),
     Profile(),
     Mycart(),
  ];

  homeappbar() {
    return  AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: nextButtonColor,
        titleSpacing: 0,
        title: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on_outlined),
                  color: white,
                  onPressed: () async {
                    await showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(4, 0, 0, 0),
                        items: [
                          PopupMenuItem(
                              child: Text(
                                  'minoti'))
                        ]);

                    print('urrrrrrrrrrrrrrrrrrrrr');
                    // showToast(
                    //     '${sharePrefereceInstance.getUserAddress()}', red);
                  },
                ),
                Text(
                  "Location",
                  style: customizeTextStyle(
                      FontWeight.normal, fontSizeTwenty, white),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              height: 1,
              thickness: 0.2,
            )
          ],
        ));
  }

  searchappbar() {

  }

  Profileappbar() {}

  Addtocart() {}

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSelectedIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? homeappbar()
          : _selectedIndex == 1
          ? searchappbar()
          : _selectedIndex == 2
          ? Profileappbar()
          : Addtocart(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'My cart',
          ),

        ],
        backgroundColor: white,
        elevation: 0,
        currentIndex: _selectedIndex,
        // unselectedItemColor: black,
        selectedItemColor: black,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
