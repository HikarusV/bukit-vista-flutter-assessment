import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/presentation/page/home.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/underconstruct.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const Home(),
    const UnderConstruct(),
    const UnderConstruct(),
    const UnderConstruct(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
