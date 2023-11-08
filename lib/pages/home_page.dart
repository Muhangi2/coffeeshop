import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/bottom_navbar.dart';
import 'package:my_flutter_app/pages/cart_page.dart';
import 'package:my_flutter_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigatebar(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomPageNav(
        onTabChange: (index) => navigatebar(index),
      ),
      body: _pages[selectedIndex],
    );
  }
}
