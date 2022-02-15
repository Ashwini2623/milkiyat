

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milkiyat/CommonWidgets/common_styles.dart';
import 'package:milkiyat/Screens/homescreen.dart';

class NavigationScreen extends StatefulWidget {
  
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex=0;
  final tabs=[
Center(child:MyHomeScreen()),
Center(child:MyHomeScreen()),
Center(child:MyHomeScreen()),
Center(child:MyHomeScreen()),

  ];
  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    int activeIndex = 0;
    final List<String> AssetImages = [
      "images/house1.jpg",
      "images/house2.jpg",
      
    ];
    return Scaffold(
  
      body: tabs[_currentIndex],
    
    bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentIndex,
type: BottomNavigationBarType.fixed,
iconSize: 25,
selectedFontSize: 13,
unselectedFontSize: 13,
backgroundColor: Colors.white,
selectedItemColor: Colors.orange,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),
        label: "Home",
        backgroundColor: Colors.orange),
         BottomNavigationBarItem(icon: Icon(Icons.explore),
        label: "Explore",
        backgroundColor: Colors.orange),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: "Saved",
        backgroundColor: Colors.orange),
         BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: "Notifications",
        backgroundColor: Colors.orange)
      ],
      onTap: (index){
        setState(() {
          _currentIndex=index;
        });
      },
    ),
    );
  }

  Widget buildImage(String AssetImage, int index) => Container(
        color: Colors.white,
        child: Image.asset(AssetImage),
      );
}
 

