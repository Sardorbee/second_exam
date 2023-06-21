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



























// import 'package:flutter/material.dart';
// import 'package:second_exam/resources/Color/custom_colors.dart';
// import 'package:second_exam/second_screen/second_screen.dart';
// import 'package:second_exam/third_screen/thrid_screen.dart';

// import 'first_screen/middle_section/boottom.dart';
// import 'first_screen/top_section/top_section.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           fontFamily: "DM Sans",
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: Scaffold(
//           backgroundColor: MyColor.primaryBckg,
//           body: Column(
//             children: [
//               FirstMain(),
//               SeecondSccrenn(name: "name", surname: "surname"),
//               CustomBottomNavigationBar(),
//             ],
//           ),
//         ));
//   }
// }

// class CustomBottomNavigationBar extends StatefulWidget {
//   @override
//   CustomBottomNavigationBarState createState() =>
//       CustomBottomNavigationBarState();
// }

// class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60, // Adjust the height as needed
//       decoration: BoxDecoration(
//         color: MyColor.buttonBckg, // Adjust the background color as needed
//         borderRadius: BorderRadius.all(
//             Radius.circular(20.0)), // Adjust the border radius as needed
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           buildNavItem('Home', Icons.home, 0),
//           buildNavItem('Profile', Icons.person, 3),
//         ],
//       ),
//     );
//   }

//   Widget buildNavItem(String label, IconData iconData, int index) {
//     return InkWell(
//       onTap: () => _onItemTapped(index),
//       child: Container(
//         width: 60, // Adjust the width as needed
//         height: 60, // Adjust the height as needed
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(iconData, color: Colors.white

//                 // Adjust the active and inactive icon color as needed
//                 ),
//             SizedBox(height: 4), // Adjust the spacing between icon and label
//             Text(
//               label,
//               style: TextStyle(
//                   fontSize: 10, // Adjust the font size as needed
//                   color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
