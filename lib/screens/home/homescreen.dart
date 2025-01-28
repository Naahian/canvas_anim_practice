import 'package:canvas_anim_practice/screens/screens.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentPage = 0;
  final PageController pageController = PageController();
  final pages = [ObjectPage(), InteractivePage(), ChartPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Paint Projects"),
          centerTitle: true,
          backgroundColor: Colors.grey[100],
        ),
        bottomNavigationBar: bottomNavBar(),
        body: PageView.builder(
            itemCount: pages.length,
            onPageChanged: (index) => navigate(index),
            controller: pageController,
            itemBuilder: (context, index) {
              return pages[index];
            }),
      ),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[900],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: currentPage,
      items: [
        navItem("Objects", "assets/icons/object.svg"),
        navItem("Interactive", "assets/icons/interactive.svg"),
        navItem("Charts", "assets/icons/chart.svg"),
      ],
      onTap: (index) => navigate(index),
    );
  }

  BottomNavigationBarItem navItem(label, url) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        url,
        width: 25,
        height: 25,
        color: Colors.white,
      ),
    );
  }

  void navigate(index) {
    setState(() {
      currentPage = index;
      pageController.jumpToPage(index);
    });
  }
}
