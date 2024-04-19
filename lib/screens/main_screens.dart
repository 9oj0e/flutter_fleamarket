import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fleamarket/screens/chatting/chatting_screen.dart';
import 'package:flutter_fleamarket/screens/home/home_screen.dart';
import 'package:flutter_fleamarket/screens/my_profile/my_profile_screen.dart';
import 'package:flutter_fleamarket/screens/near_me/near_me_screen.dart';
import 'package:flutter_fleamarket/screens/neighborhood/neighborhood_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '홈',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: '동네생활',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: '내 근처',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: '채팅',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '나의 벼룩',
          ),
        ],
      ),
    );
  }
}
