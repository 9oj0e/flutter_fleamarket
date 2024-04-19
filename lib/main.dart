import 'package:flutter/material.dart';
import 'package:flutter_fleamarket/screens/main_screens.dart';
import 'package:flutter_fleamarket/theme.dart';

void main() {
  runApp(FleaMarketUI());
}
class FleaMarketUI extends StatelessWidget {
  const FleaMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flea_market_ui',
      debugShowCheckedModeBanner: true,
      home: MainScreens(),
      theme: theme(), // AppBar에 theme 자동 적용
    );
  }
}
