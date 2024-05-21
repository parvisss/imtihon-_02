import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/dashboars3.dart';
import 'package:gharr_for_sale/screens/proporty_details.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class Dashboard2 extends StatefulWidget {
  @override
  _Dashboard2State createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  List items = ["recomended", "top rates", "Best offers", "Most searched"];
  // void chip(i) {
  //   Chip(label: Text(i));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: StyleText.textH2B,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,

        toolbarHeight: 100, //app bar ning balandligini uzgartirish
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 281.w,
                height: 51,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 204, 204),
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search by Adress, City, or ZIP",
                      hintStyle: StyleText.smallTextG),
                ),
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF006EFF),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 204, 204),
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                width: 52,
                height: 52,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => Dashboard3(),
                      ),
                    );
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/images/dashboard1/settings.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          Gap(10),
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (ctx, counter) {
                return InkWell(
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/dashboard1/home.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Gap(10),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem House",
                                    style: StyleText.textH3,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "\$340/month",
                                            style: StyleText.textH4Blu,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.location_solid,
                                                color: Colors.grey,
                                                size: 10,
                                              ),
                                              Gap(4),
                                              Text(
                                                "Avenue , West side",
                                                style: StyleText.textH5G,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 12,
                          right: 0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor:
                                  const Color.fromARGB(255, 189, 220, 245),
                            ),
                            child: const Icon(
                              Icons.bookmark_remove_sharp,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => (Proporties()),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
