import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharr_for_sale/screens/dashboard_1.dart';
import 'package:gharr_for_sale/screens/dashboard_2.dart';
import 'package:gharr_for_sale/screens/dashboars3.dart';
import 'package:gharr_for_sale/screens/profil.dart';
import 'package:gharr_for_sale/screens/proporty_details.dart';
import 'package:gharr_for_sale/screens/register.dart';
import 'package:gharr_for_sale/screens/sgin_in.dart';
import 'package:gharr_for_sale/screens/splash_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Dashboard1(),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(MainPage());
}
