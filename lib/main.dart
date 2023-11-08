import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/shop.dart';
import 'package:my_flutter_app/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TeaShop(),
        builder: (context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
