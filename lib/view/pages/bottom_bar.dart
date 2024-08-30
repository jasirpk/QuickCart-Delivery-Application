import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';
import 'package:quick_cart/view/pages/account.dart';
import 'package:quick_cart/view/pages/cart.dart';
import 'package:quick_cart/view/pages/home.dart';
import 'package:quick_cart/view/pages/my_order.dart';
import 'package:quick_cart/view_model/bottom_navbar.dart';

class TabBarsScreen extends StatelessWidget {
  const TabBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavbarState>(
        builder: (context, bottomNavbarState, child) {
          return IndexedStack(
            index: bottomNavbarState.selectedIndex,
            children: [
              HomeScreen(),
              CartScreen(),
              MyOrderScreen(),
              AccountScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<BottomNavbarState>(
          builder: (context, bottomNavBarState, child) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: bottomNavBarState.selectedIndex,
          onTap: (index) {
            bottomNavBarState.setIndex(index);
          },
          unselectedIconTheme: IconThemeData(size: 25),
          selectedItemColor: Colors.black, // Set selected icon color to green
          selectedIconTheme: IconThemeData(
              color: myColor, size: 30), // Set icon theme to green
          selectedLabelStyle: TextStyle(
              color: Colors.black,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500), // Set label color to green
          unselectedItemColor:
              Colors.black, // Set unselected icon color to black
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(CupertinoIcons.home),
                label: Assigns.home),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(IconlyLight.chart),
              label: Assigns.cart,
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(IconlyLight.bag_2),
              label: Assigns.order,
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(CupertinoIcons.person_2),
              label: Assigns.account,
            ),
          ],
        );
      }),
    );
  }
}
