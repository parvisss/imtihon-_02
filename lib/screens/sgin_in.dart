import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/profil.dart';
import 'package:gharr_for_sale/screens/register.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String? passwordError = "";
  String? usernameError = "";
  List<Map<String, dynamic>> data = [];

  void validatePassword() {
    String password = passwordController.text;
    String username = usernameController.text;

    setState(() {
      int count = 0;

      for (var i = 0; i < data.length; i++) {
        if (data[i]['password'] == password &&
            data[i]["username"] == username) {
          count++;
        }
      }
      if (password.isEmpty) {
        passwordError = "parolni kiriting";
      } else if (password.length < 8) {
        passwordError =
            "parol kamida 8 ta elementdan tashkil topgan bulishi kerak";
      }

      if (count == 0) {
        passwordError = "notugri password yoki user name";
      } else {
        passwordError = null;
      }
    });
  }

  void validateUsername() {
    String username = usernameController.text;

    setState(() {
      if (username.isEmpty) {
        usernameError = "Iltimos username kiriting";
      } else if ((username.length < 8)) {
        usernameError =
            "username eng kamida 8 ta belgidan iborat bulishi kerak";
      } else {
        usernameError = null;
      }
    });
  }

  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // i use column as well as this page is buld by lines
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 41,
                top: 20,
              ),
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
                            TextSpan(
                                text: "Gharr", style: StyleText.iconTextBla),
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
                  const Gap(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sign in", style: StyleText.textH3),
                      const Gap(20),
                      const Text("User name", style: StyleText.textH4),
                      const Gap(12),
                      TextField(
                        controller: usernameController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          errorText: usernameError,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            "Username",
                            style: StyleText.smallTextG,
                          ),
                          prefixIcon: const Icon(
                            CupertinoIcons.person,
                            color: Colors.grey,
                          ),
                        ),
                        onChanged: (value) {
                          validateUsername();
                        },
                      ),
                      // const Gap(15),
                      const Text("Password", style: StyleText.textH4),
                      const Gap(12),
                      TextField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          errorText: passwordError,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            "Password",
                            style: StyleText.smallTextG,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsecure = !obsecure;
                                });
                              },
                              icon: Icon(obsecure
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye)),
                          prefixIcon: const Icon(
                            Icons.key_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        obscureText: obsecure,
                        onChanged: (value) {
                          validatePassword();
                        },
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account ?",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              TextButton(
                                onPressed: () async {
                                  data = await Navigator.of(context).push(
                                    MaterialPageRoute(builder: (ctx) {
                                      return RegisterScreen();
                                    }),
                                  );
                                  print(data);
                                  setState(() {});
                                },
                                child: const Text(
                                  "Sign up here",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(150.h),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: StyleButton.elevatodButton,
                      onPressed: () {
                        if (passwordError == null && usernameError == null) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ProfilScreen()));
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 70.w,
                        height: 5,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.grey]),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Or continue with",
                        style: StyleText.smallTextG,
                      ),
                      const Gap(10),
                      Container(
                        width: 70.w,
                        height: 5,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.grey,
                            Colors.white,
                          ]),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            bottomRight: Radius.circular(70),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/google.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Gap(20.w),
                      IconButton(
                        onPressed: () {
                          print(passwordError);
                          print(passwordController.text);
                        },
                        icon: Image.asset(
                          "assets/images/apple.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Gap(20.w),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            size: 35,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
