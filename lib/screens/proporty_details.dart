import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class Proporties extends StatefulWidget {
  @override
  _ProportiesState createState() => _ProportiesState();
}

class _ProportiesState extends State<Proporties> {
  final List<String> texts = [
    "car parking",
    "bedrooms",
    "bathrooms",
    "safety rank"
  ];
  final List<String> text2 = [
    "Car parcing",
    "Swimming",
    "Gym&Fit",
    "Restaurant",
    "Wi-Fi",
    "Pet CEnter",
    "Sports",
    "Laundry"
  ];
  bool thumUp = false;
  bool thumDown = false;
  bool thumUp2 = false;
  bool thumDown2 = false;

  int upCount = 4;
  int upCount2 = 4;

  int downCount = 1;
  int downCount2 = 1;
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 387,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage("assets/images/proporty_screen/home.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                onPressed: () {
                                  like = !like;
                                  setState(() {});
                                },
                                icon: like
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 35,
                                      )
                                    : const Icon(
                                        Icons.favorite_border,
                                        size: 35,
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "4.9 (6.8K review)",
                              style: StyleText.textH3G,
                            ),
                          ],
                        ),
                        Text(
                          'Apartment',
                          style: StyleText.textH3Blu,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Woodland Apartment", style: StyleText.textH2B),
                    Text(
                      "1012 Ocean avenue, New York, USA",
                      style: StyleText.textH4G,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const TabBar(
                labelColor: Color(0xFF006EFF),
                indicatorColor: Color(0xFF006EFF),
                tabs: [
                  Tab(text: "Description"),
                  Tab(text: "Gallery"),
                  Tab(text: "Review"),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 1280,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                for (int i = 1; i < 5; i++)
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/proporty_screen/icon$i.png",
                                            fit: BoxFit.contain,
                                          ),
                                          const Gap(10),
                                          Text(
                                            texts[i - 1],
                                            style: StyleText.textH5G,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          const Text(
                            "Listing Agent",
                            style: StyleText.textH3,
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        "assets/images/dashboard1/avatar1.png"),
                                  ),
                                  Gap(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Sandeep S."),
                                      Text(
                                        "Partner",
                                        style: StyleText.textH4G,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/proporty_screen/mail_icon.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                  ),
                                  const Gap(10),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/proporty_screen/call_icon.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Gap(20),
                          const Text(
                            "Facilities",
                            style: StyleText.textH3,
                          ),
                          const Gap(10),
                          Center(
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                for (int j = 1; j < 5; j++)
                                  Container(
                                    height: 125,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/proporty_screen/icons/image$j.png",
                                            fit: BoxFit.contain,
                                          ),
                                          const Gap(10),
                                          Text(
                                            text2[j - 1],
                                            style: StyleText.textH5G,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                for (int j = 5; j < 9; j++)
                                  Container(
                                    height: 125,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/proporty_screen/icons/image$j.png",
                                            fit: BoxFit.contain,
                                          ),
                                          const Gap(10),
                                          Text(
                                            text2[j - 1],
                                            style: StyleText.textH5G,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Adress",
                                style: StyleText.textH3,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "View on Map",
                                    style: StyleText.textH3Blu,
                                  ))
                            ],
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: const Color.fromARGB(255, 219, 217, 217),
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_solid,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Gap(4),
                              Text(
                                "Lorem Ipsum is simply dummy text ",
                                style: StyleText.textH4G,
                              ),
                            ],
                          ),
                          const Gap(20),
                          SizedBox(
                            width: double.infinity,
                            height: 201.h,
                            child: Image.asset(
                              "assets/images/proporty_screen/map.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Gallery",
                                style: StyleText.textH3,
                              ),
                              Text(
                                "(400)",
                                style: StyleText.textH3Blu,
                              )
                            ],
                          ),
                          Wrap(
                            children: [
                              for (int i = 1; i < 6; i++) ...[
                                Card(
                                  child: Image.asset(
                                    "assets/images/proporty_screen/gallery/image$i.png",
                                    height: 160,
                                    width: 155,
                                  ),
                                )
                              ]
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Gallery",
                                style: StyleText.textH3,
                              ),
                              Gap(10),
                              Text(
                                "(400)",
                                style: StyleText.textH3Blu,
                              )
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        "assets/images/dashboard1/avatar1.png"),
                                  ),
                                  Gap(10),
                                  Text("Sandeep S.")
                                ],
                              ),
                              Text(
                                "2 moths ego",
                                style: StyleText.textH4G,
                              ),
                            ],
                          ),
                          const Gap(10),
                          const SizedBox(
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing.Lorem Ipsum is simply dummy text of the printing.",
                              style: StyleText.textH4G,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++) ...[
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    const Gap(2),
                                  ],
                                  const Text(
                                    "5.0",
                                    style: StyleText.textH4G,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Helpfull?",
                                    style: StyleText.textH4,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      thumUp = !thumUp;
                                      thumUp ? upCount++ : upCount--;

                                      setState(() {});
                                    },
                                    icon: thumUp
                                        ? const Icon(Icons.thumb_up)
                                        : const Icon(
                                            Icons.thumb_up_alt_outlined),
                                  ),
                                  Text(upCount.toString()),
                                  IconButton(
                                    onPressed: () {
                                      thumDown = !thumDown;
                                      thumDown ? downCount++ : downCount--;

                                      setState(() {});
                                    },
                                    icon: thumDown
                                        ? const Icon(Icons.thumb_down)
                                        : const Icon(
                                            Icons.thumb_down_alt_outlined),
                                  ),
                                  Text(downCount.toString())
                                ],
                              ),
                            ],
                          ),
                          const Gap(50),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          const Gap(50),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        "assets/images/dashboard1/avatar1.png"),
                                  ),
                                  Gap(10),
                                  Text("Sandeep S.")
                                ],
                              ),
                              Text(
                                "2 moths ego",
                                style: StyleText.textH4G,
                              ),
                            ],
                          ),
                          const Gap(10),
                          const SizedBox(
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing.Lorem Ipsum is simply dummy text of the printing.",
                              style: StyleText.textH4G,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++) ...[
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    const Gap(2),
                                  ],
                                  const Text(
                                    "5.0",
                                    style: StyleText.textH4G,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Helpfull?",
                                    style: StyleText.textH4,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      thumUp2 = !thumUp2;
                                      thumUp2 ? upCount2++ : upCount2--;

                                      setState(() {});
                                    },
                                    icon: thumUp2
                                        ? const Icon(Icons.thumb_up)
                                        : const Icon(
                                            Icons.thumb_up_alt_outlined),
                                  ),
                                  Text(upCount2.toString()),
                                  IconButton(
                                    onPressed: () {
                                      thumDown2 = !thumDown2;
                                      thumDown2 ? downCount2++ : downCount2--;

                                      setState(() {});
                                    },
                                    icon: thumDown2
                                        ? const Icon(Icons.thumb_down)
                                        : const Icon(
                                            Icons.thumb_down_alt_outlined),
                                  ),
                                  Text(downCount2.toString())
                                ],
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("View all 172 reviews"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 219, 217, 217),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style: StyleText.textH3,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$350",
                                style: StyleText.textH2Blu,
                              ),
                              Text(
                                "/month",
                                style: StyleText.textH4G,
                              )
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(165, 46),
                          backgroundColor: const Color(0xFF006EFF),
                          foregroundColor: (Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Book Now",
                          style: StyleText.textH3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
