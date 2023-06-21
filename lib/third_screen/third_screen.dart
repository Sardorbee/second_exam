import 'package:flutter/material.dart';
import 'package:second_exam/resources/Color/custom_colors.dart';
import 'package:second_exam/resources/Color/custom_text.dart';
import 'package:second_exam/second_screen/second_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String profileName = "Rakibull";
  String profileSurname = "Hassan";

  @override
  void initState() {
    nameController.text = profileName;
    surnameController.text = profileSurname;
    super.initState();
  }

  void updateProfile() {
    setState(() {
      profileName = nameController.text;
      profileSurname = surnameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double avatarRadius = screenHeight * 0.07;

    return Scaffold(
      backgroundColor: MyColor.primaryBckg,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Profile',
              style: TextStyle(
                color: MyColor.textColor,
                fontSize: screenHeight * 0.04,
                fontWeight: FontWeight.bold,
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
                      radius: avatarRadius,
                      child: Image.asset("assets/images/bootm/123.png"),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    MyText(
                      "$profileName $profileSurname",
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
            SizedBox(height: screenHeight * 0.03),
            Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Text(
                'Email Address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.016,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                controller: emailController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  // labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Text(
                'Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.016,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  // labelText: 'Surname',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Text(
                'First Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.016,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                controller: nameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  // labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your First name',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Text(
                'Last name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.016,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                controller: surnameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your Last name',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      updateProfile();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            name: nameController.text,
                            surname: surnameController.text,
                          ),
                        ),
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => MyApp(

                      //     ),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.buttonBckg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'Save',
                      style:
                          TextStyle(fontSize: 18.0, color: MyColor.textColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
