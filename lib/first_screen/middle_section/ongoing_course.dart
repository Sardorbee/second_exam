import 'package:flutter/material.dart';

import '../../resources/Color/custom_colors.dart';
import '../../resources/Color/custom_text.dart';
import 'linear_indicator.dart';

class CoursesListviewBuilder extends StatelessWidget {
  const CoursesListviewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.115,
      width: MediaQuery.sizeOf(context).height * 0.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).height * 0.03,
            ),
            child: Stack(
              children: [
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).height * 0.014,
                      top: MediaQuery.sizeOf(context).height * 0.014,
                      bottom: MediaQuery.sizeOf(context).height * 0.014,
                      right: MediaQuery.sizeOf(context).height * 0.05,
                    ),
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    // height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(
                      color: MyColor.buttonBckg,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.sizeOf(context).height * 0.016,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: MyText(
                            "3D Essential - CenemaD",
                            fontSize: MediaQuery.sizeOf(context).height * 0.016,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              "32 lesson",
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.016,
                            ),
                            MyText(
                              "20 lesson",
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.016,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        const LinearIndicator(),
                        // LinearProgressIndicator(
                        //   minHeight:
                        //       MediaQuery.sizeOf(context).height * 0.007,
                        // )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width * 0.18,
                    child: Image.asset(
                      color: Colors.white,
                      "assets/images/imag.png",
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
