import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:tf/config/config.dart';
import 'package:tf/pages/Principal/Historial.page.dart';
import 'package:tf/pages/Principal/Principal.page.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:tf/pages/Principal/Settings.page.dart';
import 'package:tf/pages/Search/Search.page.dart';

class PrincipalManagePage extends StatefulWidget {
  const PrincipalManagePage({super.key});

  @override
  State<PrincipalManagePage> createState() => _PrincipalManagePageState();
}

class _PrincipalManagePageState extends State<PrincipalManagePage> {
  int selected = 0;
  //bool heart = false;
  final PageController pageController = PageController();
  late CircularBottomNavigationController controller;

  @override
  void initState() {
    super.initState();
    controller = CircularBottomNavigationController(selected);
  }

  List<Widget> Pages = List.of([
    PrincipalPage(),
    SearchPage(),
    HistorialPage(),
    SettingsPage()
  ]);

  List<TabItem> tabItems = List.of([
    TabItem(
        Icons.home_outlined,
        //IconData(SvgPicture.string(SvgState.SvgHomeClick)),
        "Home",
        Config.titleColor,
        labelStyle:
            const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        circleStrokeColor: Config.titleColor),
    TabItem(Icons.search_rounded, "Search", Config.titleColor,
        labelStyle:
            const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        circleStrokeColor: Config.titleColor),
    TabItem(Icons.message_sharp, "Menssages", Config.titleColor,
        labelStyle:
            const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        circleStrokeColor: Config.titleColor),
    TabItem(Icons.settings, "Settings", Config.titleColor,
        labelStyle:
            const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        circleStrokeColor: Config.titleColor),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.titleColor,
      extendBody: true,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selected = index;
            controller.value = index ?? 0;
          });
        },
        children: Pages,
      ),
      bottomNavigationBar: CircularBottomNavigation(
        tabItems,
        controller: controller,
        selectedPos: selected,
        barHeight: 93.0,
        barBackgroundColor: Colors.white,
        backgroundBoxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black45, blurRadius: 10.0),
        ],
        animationDuration: const Duration(microseconds: 300),
        selectedCallback: (int? selectedPos) {
          setState(() {
            selected = selectedPos ?? 0;
            pageController.jumpToPage(selected);
          });
        },
      ),
    );
  }
}
