import 'package:flutter/material.dart';

import '../../resources/Color/custom_colors.dart';
import '../../resources/Color/custom_text.dart';

class ListviewForCourses extends StatelessWidget {
  const ListviewForCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      width: MediaQuery.sizeOf(context).height * 0.6,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "All course",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "UX/UI Designer",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "Development",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "Android development",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "Flutter Development",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).height*0.04,),
            height: MediaQuery.sizeOf(context).height * 0.038,
            // width: MediaQuery.sizeOf(context).width*0.15,
            decoration: BoxDecoration(
              color: MyColor.buttonBckg,
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).height * 0.012,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).height * 0.015,
                right: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: Center(
                  child: MyText(
                "Python Development",
                fontSize: MediaQuery.sizeOf(context).height * 0.017,
              )),
            ),
          ),
        ],
      ),
    );
  }
}