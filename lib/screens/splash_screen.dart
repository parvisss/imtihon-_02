import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/onboardings.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // i use column as well as this page is buld by lines
        children: [
          SizedBox(
            //wrapping image to the sized box to give the fixed space
            height: 578.h,
            width: double.infinity,
            child: Image.asset(
              "assets/images/image_1.png",
              fit: BoxFit.cover,
            ),
          ),
          // const Gap(20),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 41, top: 20, bottom: 61),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/home_icon.png",
                      height: 65.h,
                      width: 58.w,
                    ),
                    Gap(2.h),
                    RichText(
                      //using rich text because there are many text in row with different styles
                      text: const TextSpan(
                        children: [
                          TextSpan(text: "Gharr", style: StyleText.iconTextBla),
                          TextSpan(text: "For", style: StyleText.iconTextBlu),
                          TextSpan(
                              text: ".Sale",
                              style: StyleText
                                  .iconTextBla), //use style which i created
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                const Gap(20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: StyleButton.elevatodButton,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => OnboardingScreen()));
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
