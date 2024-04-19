import 'package:flutter/material.dart';
import 'package:flutter_fleamarket/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen appBar 영역(index:0)'),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text(
            'HomeScreen body 영역(index:0)',
            style: textTheme().displayMedium,
          ),
        ),
      ),
    );
  }
}
