import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/sgin_in.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool icon1 =
      true; //pastdagi 3 ta menu ni bosganda ham ishlayfi shuning uchun ularga alohida uzgaruvchi
  bool icon2 = false;
  bool icon3 = false;

  String image =
      "assets/images/onboarding/image1.png"; //menu nuqtlari bosilganda  rasimda  ham uzgarish buladi shuning uchun bu uzgaruvchini ochdim va bu uzgaruvchi boshqa qiymatga alishadi
  int nextButton = 2; //bu next tugmasini bosganda ishlattish uchun yaratilgan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 375.h,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: " Lerom",
                          style: StyleText.iconTextBla,
                        ),
                        TextSpan(
                          text: " Ipsum",
                          style: StyleText.iconTextBlu,
                        ),
                        TextSpan(
                          text: " is",
                          style: StyleText.iconTextBlu,
                        ),
                        TextSpan(
                          text: " simply",
                          style: StyleText.iconTextBlu,
                        ),
                        TextSpan(
                          text: " dummy text printing",
                          style: StyleText.iconTextBla,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, //centering text
                  ),
                  const Gap(10),
                  RichText(
                    text: const TextSpan(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: StyleText.smallTextG),
                    textAlign: TextAlign.center,
                  ),
                  Gap(100.h),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                icon1 = true;
                                icon2 = false;
                                icon3 = false;
                                image = "assets/images/onboarding/image1.png";
                              });
                            },
                            icon: Icon(
                              Icons.circle,
                              color: icon1
                                  ? const Color(0xFF006EFF)
                                  : const Color.fromARGB(255, 152, 152, 152),
                              size: icon1 ? 35 : 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                icon2 = true;
                                icon1 = false;
                                icon3 = false;
                                image = "assets/images/onboarding/image2.png";
                              });
                            },
                            icon: Icon(
                              Icons.circle,
                              color: icon2
                                  ? const Color(0xFF006EFF)
                                  : const Color.fromARGB(255, 152, 152, 152),
                              size: icon2 ? 35 : 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                icon3 = true;
                                icon1 = false;
                                icon2 = false;
                                image = "assets/images/onboarding/image3.png";
                              });
                            },
                            icon: Icon(
                              Icons.circle,
                              color: icon3
                                  ? const Color(0xFF006EFF)
                                  : const Color.fromARGB(255, 152, 152, 152),
                              size: icon3 ? 35 : 20,
                            ),
                          ),
                          const SizedBox(
                            //bu bushliq icon ni bosgandan keyin animasiyasi rowga sigishiga berilgan aks holda animatsiya tuliq kursatilmaydi
                            height: 82,
                          )
                        ],
                      ),
                      Positioned(
                        //bu yerda positioned dan foydalandim chunki bu button doim eranning ug qismidan joy oladi
                        bottom: 0.4,
                        right: 20,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nextButton == 2) {
                                icon2 = true;
                                icon1 = false;
                                icon3 = false;
                                image = "assets/images/onboarding/image2.png";
                                nextButton = 3;
                              } else if (nextButton == 3) {
                                icon3 = true;
                                icon1 = false;
                                icon2 = false;
                                image = "assets/images/onboarding/image3.png";
                                nextButton = 4;
                              } else if (nextButton == 1) {
                                icon1 = true;
                                icon2 = false;
                                icon3 = false;
                                nextButton = 2;
                                image = "assets/images/onboarding/image1.png";
                              } else if (nextButton == 4) {
                                nextButton = 2;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => SignInScreen(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right_sharp,
                            color: Color(0xFF006EFF),
                            size: 65,
                          ),
                        ),
                      ),
                      !icon1
                          ? Positioned(
                              //bu yerda positioned dan foydalandim chunki bu button doim eranning ug qismidan joy oladi
                              bottom: 0.4,
                              left: 20,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (nextButton == 2) {
                                      icon2 = true;
                                      icon1 = false;
                                      icon3 = false;
                                      image =
                                          "assets/images/onboarding/image2.png";
                                      nextButton = 1;
                                    } else if (nextButton == 3) {
                                      icon3 = true;
                                      icon1 = false;
                                      icon2 = false;
                                      nextButton = 2;
                                      image =
                                          "assets/images/onboarding/image3.png";
                                    } else if (nextButton == 1) {
                                      icon1 = true;
                                      icon2 = false;
                                      icon3 = false;
                                      image =
                                          "assets/images/onboarding/image1.png";
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: Color(0xFF006EFF),
                                  size: 65,
                                ),
                              ),
                            )
                          : const Gap(0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, top: 40),
                        child: RichText(
                          text: TextSpan(
                            text: "Skip",
                            style: TextStyle(color: Color(0xFF006EFF)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => SignInScreen(),
                                  ),
                                );
                              },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
