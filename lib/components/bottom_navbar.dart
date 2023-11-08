import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomPageNav extends StatefulWidget {
final Function(int)? onTabChange; // Callback for tab change

  
  const BottomPageNav({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

//overides the method of createState of the stateful class
  @override
  State<BottomPageNav> createState() => _BottomPageNavState();
}

class _BottomPageNavState extends State<BottomPageNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: widget.onTabChange, // Directly use the provided callback
        mainAxisAlignment: MainAxisAlignment.center,
        color: const Color.fromARGB(255, 30, 28, 28),
        activeColor: const Color.fromARGB(255, 84, 27, 27),
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
