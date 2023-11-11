import 'package:flutter/material.dart';
import 'package:second_exam/resources/Color/custom_colors.dart';
import 'package:second_exam/resources/Color/custom_text.dart';
import 'package:second_exam/second_screen/second_screen.dart';

import 'first_screen/top_section/top_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "DM Sans",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const FirstMain(),
    const SeecondSccrenn(
      name: "Hasan",
      surname: "basheer",
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryBckg,
      body: Column(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
          CustomBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatelessWidget {
  int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    bool isVisible1 = false;
    if (selectedIndex == 0) {
      isVisible = true;
    }
    if (selectedIndex == 1) {
      isVisible1 = true;
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
        color: MyColor.buttonBckg,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              buildNavItem('assets/images/bootm/home.png', 0),
              Visibility( visible: isVisible,child: const MyText("Home"),),
            ],
          ),
          Row(
            children: [
              SizedBox(
                  height: 70,
                  width: 55,
                  child: buildNavItem('assets/images/bootm/person.png', 1)),
              Visibility(visible: isVisible1, child: const MyText("Profile")),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(iconData, int index) {
    return InkWell(
      onTap: () => onItemTapped(index),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconData),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}