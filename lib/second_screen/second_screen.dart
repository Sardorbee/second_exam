import 'package:flutter/material.dart';
import 'package:second_exam/third_screen/third_screen.dart';
import '../resources/Color/custom_colors.dart';
import '../resources/Color/custom_text.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String surname;
  const SecondScreen({required this.name, required this.surname, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.primaryBckg,
        body: SeecondSccrenn(name: name, surname: surname));
  }
}

class SeecondSccrenn extends StatelessWidget {
  const SeecondSccrenn({
    super.key,
    required this.name,
    required this.surname,
  });

  final String name;
  final String surname;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double avatarRadius = screenHeight * 0.07;
    return Padding(
      padding: EdgeInsets.all(screenHeight * 0.02),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.03),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Profile',
              style: TextStyle(
                color: MyColor.textColor,
                fontSize: screenHeight * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: screenHeight * 0.25,
              child: Column(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                        fit: BoxFit.cover, "assets/images/bootm/123.png"),
                    radius: avatarRadius,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  MyText(
                    "$name $surname",
                    fontSize: screenHeight * 0.03,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.1,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      color: MyColor.buttonBckg,
                      minHeight: MediaQuery.of(context).size.height * 0.008,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.08,
          ),
          Container(
            padding: EdgeInsets.all(screenHeight * 0.012),
            height: screenHeight * 0.08,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                screenHeight * 0.024,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText("Billed every year"),
                    MyText("12 month at \$8.00/month")
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(screenHeight * 0.005),
                  decoration: BoxDecoration(
                    color: MyColor.primaryBckg,
                    borderRadius: BorderRadius.circular(
                      screenHeight * 0.024,
                    ),
                  ),
                  child: MyText(
                    "Upgrade",
                    fontSize: screenHeight * 0.014,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Container(
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                screenHeight * 0.024,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.024),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start, // Add this line
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyText("Profile Information"),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        icon: const Icon(
                          color: Colors.white,
                          Icons.edit_square,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  MyText(
                    "Email Address",
                    fontSize: screenHeight * 0.02,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  MyText("Password", fontSize: screenHeight * 0.014),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  MyText("First Name", fontSize: screenHeight * 0.014),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  MyText("Last Name", fontSize: screenHeight * 0.014),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
        ],
      ),
    );
  }
}
