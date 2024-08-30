import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_cart/view/pages/bottom_bar.dart';
import 'package:quick_cart/view_model/bottom_navbar.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => BottomNavbarState(),
    )
  ], child: QuickCart()));
}

class QuickCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
              bodyLarge: TextStyle(color: Colors.black),
              bodyMedium: TextStyle(color: Colors.black),
              bodySmall: TextStyle(color: Colors.black))),
      home: TabBarsScreen(),
    );
  }
}
