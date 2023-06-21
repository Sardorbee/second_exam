
import 'package:flutter/material.dart';

import '../../resources/Color/custom_text.dart';

class TwoInTheMiddle extends StatelessWidget {
  const TwoInTheMiddle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: MediaQuery.sizeOf(context).width * 0.015,
      ),
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).width * 0.046,
              ),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  width: MediaQuery.sizeOf(context).width * 0.44,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        MediaQuery.sizeOf(context).height * 0.018,
                      ),
                      topRight: Radius.circular(
                        MediaQuery.sizeOf(context).height * 0.018,
                      ),
                    ),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      'assets/images/rasm1.png',
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          "Marketing",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.sizeOf(context).height * 0.115,
                        ),
                        MyText(
                          "\$50",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    Row(
                      children: [
                        MyText(
                          "By : Sardor",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.sizeOf(context).width * 0.28,
                        ),
                        const MyText('')
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    Row(
                      children: [
                        MyText(
                          "50 lesson",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.013,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.sizeOf(context).width * 0.22,
                        ),
                        Image.asset("assets/images/Star.png"),
                        MyText(
                          "4.5",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.013,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width:  MediaQuery.sizeOf(context).height * 0.013,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).width * 0.046,
              ),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  width: MediaQuery.sizeOf(context).width * 0.46,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        MediaQuery.sizeOf(context).height * 0.018,
                      ),
                      topRight: Radius.circular(
                        MediaQuery.sizeOf(context).height * 0.018,
                      ),
                    ),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      'assets/images/rasm2.png',
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          "Marketing",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.sizeOf(context).height * 0.115,
                        ),
                        MyText(
                          "\$50",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    Row(
                      children: [
                        MyText(
                          "By : Sardor",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.014,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.sizeOf(context).width * 0.28,
                        ),
                        const MyText('')
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    Row(
                      children: [
                        MyText(
                          "50 lesson",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.013,
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.22,
                        ),
                        Image.asset("assets/images/Star.png"),
                        MyText(
                          "4.5",
                          fontSize:
                              MediaQuery.sizeOf(context).height * 0.013,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
