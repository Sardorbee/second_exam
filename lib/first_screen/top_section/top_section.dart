
import 'package:flutter/material.dart';

import '../../resources/Color/custom_colors.dart';
import '../../resources/Color/custom_text.dart';
import '../middle_section/middle_section.dart';
import '../middle_section/ongoing_course.dart';
import 'listview_for_courses.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryBckg,
      body: const FirstMain(),
    );
  }
}

class FirstMain extends StatelessWidget {
  const FirstMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: MediaQuery.sizeOf(context).height * 0.02),
      child: Column(
        children: [
          const SizedBox(
            height: 44,
          ),
          Container(
            width: MediaQuery.sizeOf(context).height * 0.115,
            height: MediaQuery.sizeOf(context).height * 0.028,
            decoration: BoxDecoration(
                color: MyColor.buttonBckg,
                borderRadius: BorderRadius.circular(29)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/gloov.png",
                    color: Colors.white,
                  ),
                  MyText(
                    "English",
                    fontSize: MediaQuery.sizeOf(context).height * 0.017,
                  ),
                  SizedBox(
                    height: 16,
                    width: 18,
                    child: Image.asset(
                      "assets/images/dropdow.png",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          MyText(
            fontSize: MediaQuery.sizeOf(context).height * 0.0295,
            "What would you like to                 learn today? Search below.",
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.008),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.57,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: MediaQuery.sizeOf(context).width * 0.001,
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width * 0.2),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search course",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.sizeOf(context).height * 0.016),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          const ListviewForCourses(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.04,
          ),
          Align(
            alignment: FractionalOffset.topLeft,
            child: MyText(
              "Ongoing Courses",
              fontSize: MediaQuery.sizeOf(context).height * 0.025,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.015,
          ),
          const CoursesListviewBuilder(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.02,
          ),
          const TwoInTheMiddle(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.02,
          ),
        ],
      ),
    );
  }
}
