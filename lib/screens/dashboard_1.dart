import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/screens/dashboard_2.dart';
import 'package:gharr_for_sale/screens/dashboars3.dart';
import 'package:gharr_for_sale/screens/proporty_details.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  List items = ["recomended", "top rates", "Best offers", "Most searched"];
  // void chip(i) {
  //   Chip(label: Text(i));
  // }
  List images = [
    "assets/images/dashboard1/home.png",
    "assets/images/dashboard1/home2.png",
    "assets/images/dashboard1/home.png",
    "assets/images/dashboard1/home2.png",
    "assets/images/dashboard1/home.png",
    "assets/images/dashboard1/home2.png"
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                "assets/images/dashboard1/navigation1.png",
              ),
              height: 30,
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/dashboard1/navigation2.png"),
              height: 20,
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/dashboard1/navigation3.png"),
              height: 20,
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/dashboard1/navigation4.png"),
              height: 20,
              width: 20,
            ),
            label: '',
          ),
        ],
      ),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(20.0.w),
          child: const Column(
            children: [
              Gap(10),
              Text(
                "Lets find Your",
                style: StyleText.textH2G,
              ),
              Text(
                "Favorite home",
                style: StyleText.textH2B,
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/images/dashboard1/avatar1.png",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
        toolbarHeight: 100, //app bar ning balandligini uzgartirish
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      width: 251.w,
                      height: 51,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 205, 204, 204),
                                blurRadius: 5),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/dashboard1/search.png",
                              height: 20,
                              width: 20,
                            ),
                            const Gap(30),
                            const Text(
                              "Search by Adress, City, or ZIP",
                              style: StyleText.smallTextG,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => Dashboard2(),
                        ),
                      );
                    },
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
              const Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < items.length; i++) ...[
                      InkWell(
                        child: Chip(
                          label: Text(items[i]),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          side: BorderSide.none,
                          backgroundColor: selected == i
                              ? const Color(0xFF006EFF)
                              : const Color.fromARGB(255, 217, 215, 215),
                        ),
                        onTap: () {
                          selected = i;
                          setState(() {});
                        },
                      ),
                      const SizedBox(width: 20),
                    ],
                  ],
                ),
              ),
              const Gap(15),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < items.length; i++) ...[
                          InkWell(
                            child: Card(
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/dashboard1/home.png",
                                        height: 155,
                                        width: 223,
                                      ),
                                      const Gap(10),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                      style:
                                                          StyleText.textH4Blu,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          CupertinoIcons
                                                              .location_solid,
                                                          color: Colors.grey,
                                                          size: 10,
                                                        ),
                                                        Gap(4),
                                                        Text(
                                                          "Avenue , West side",
                                                          style:
                                                              StyleText.textH5G,
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
                                        backgroundColor: const Color.fromARGB(
                                            255, 189, 220, 245),
                                      ),
                                      child: const Icon(
                                          Icons.bookmark_remove_sharp),
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
                          ),
                          const SizedBox(width: 20),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Near You",
                          style: StyleText.textH2B,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "more",
                              style: StyleText.textH4G,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        for (int i = 0; i < images.length; i++) ...[
                          InkWell(
                            child: Card(
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        images[i],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 240, 202, 11),
                                            ),
                                            Text(
                                              "4.9",
                                              style: StyleText.textH4G,
                                            )
                                          ],
                                        ),
                                        const Text(
                                          "Woodland Apartment",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              "Avenue , West side",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/dashboard1/card1.png",
                                                height: 60,
                                                width: 60,
                                              ),
                                              const Gap(10),
                                              Image.asset(
                                                "assets/images/dashboard1/card2.png",
                                                height: 50,
                                                width: 50,
                                              ),
                                              const Gap(10),
                                            ],
                                          ),
                                        )
                                      ],
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
                          ),
                          const SizedBox(height: 20),
                        ],
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
