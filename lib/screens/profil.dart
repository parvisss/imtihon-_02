import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/dashboard_1.dart';
import 'package:gharr_for_sale/utils/styles.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  String? emailError = "";
  String? nameError = "";
  String name = "";
  String email = "";

  void validateEmail() {
    String email = emailController.text;
    setState(
      () {
        if (email.isEmpty) {
          emailError = "Iltimos email kiriting";
        } else if (!email.contains("@") || !email.contains(".")) {
          emailError = "Iltimos tugri electron pochta kiriting";
        } else if (!(email.length - email.indexOf("@") > 3)) {
          emailError = "notugri adres turi kiritilgan (email.com,gnail.com)";
        } else {
          emailError = null;
        }
      },
    );
  }

  void validatename() {
    String name = nameController.text;
    setState(
      () {
        if ((name.length < 8)) {
          nameError = "ism  eng kamida 8 ta belgidan iborat bulishi kerak";
        } else {
          nameError = null;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 41,
                top: 20,
              ),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "Complete Your Profile",
                        style: StyleText.textH2B),
                  ),
                  const Gap(7),
                  Padding(
                    padding: EdgeInsets.only(left: 40.w, right: 40.w),
                    child: RichText(
                      text: const TextSpan(
                          text:
                              "Don’t worry, only you ca see your personal data. No one else will be able to see it."),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.person_circle_fill,
                        size: 200.h,
                      )
                    ],
                  ),
                  const Gap(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(20),
                      const Text("Profil name", style: StyleText.textH4),
                      const Gap(12),
                      TextField(
                        controller: nameController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          errorText: nameError,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            "Your Name",
                            style: StyleText.smallTextG,
                          ),
                        ),
                        onChanged: (value) {
                          validatename();
                        },
                      ),
                      const Gap(10),
                      const Text(
                        "Phone number",
                        style: StyleText.textH4,
                      ),
                      const Gap(12),
                      IntlPhoneField(
                        /// use dependency for celect countr code
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            label: const Text(
                              "Numbers",
                              style: StyleText.smallTextG,
                            ),
                            hintText: "234 56 78",
                            hintStyle: StyleText.smallTextG),
                      ),
                      const Gap(10),
                      const Text(
                        "Email adress",
                        style: StyleText.textH4,
                      ),
                      const Gap(12),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            errorText: emailError,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            label: const Text(
                              "Email adress",
                              style: StyleText.smallTextG,
                            ),
                            prefixIcon: const Icon(
                              CupertinoIcons.person,
                              color: Colors.grey,
                            ),
                            hintText: "name@example.com",
                            hintStyle: StyleText.smallTextG),
                        onChanged: (value) {
                          validateEmail();
                        },
                      ),
                    ],
                  ),
                  Gap(30.h),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: StyleButton.elevatodButton,
                      onPressed: () {
                        if (nameError == null && emailError == null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => Dashboard1(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
