import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gharr_for_sale/extansions/extansion.dart';
import 'package:gharr_for_sale/utils/styles.dart';

class Dashboard3 extends StatefulWidget {
  @override
  _Dashboard3State createState() => _Dashboard3State();
}

class _Dashboard3State extends State<Dashboard3> {
  List items = [
    "All",
    "House",
    "Villa",
    "Apartment",
    "All",
    "House",
    "Villa",
    "Apartment"
  ];
  bool bottomButton = false;
  bool bottomButton2 = true;
  String? _selectedvalue;
  // List selected = [true, false, false, false, false, false, false, false];
  int selected = 0;
  int selectod2 = 0;
  RangeValues rangeSliderValues = RangeValues(100, 1000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Filter",
          style: StyleText.textH2B,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/dashboard1/search.png",
                  color: Colors.black,
                  height: 20,
                  width: 20,
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide.none,
                elevation: 0,
                fixedSize: Size(180, 60),
                backgroundColor:
                    bottomButton ? Color(0xFF006EFF) : Colors.white,
                foregroundColor:
                    bottomButton ? Colors.white : Color(0xFF006EFF),
              ),
              onPressed: () {
                bottomButton = true;
                bottomButton2 = false;
                setState(() {});
              },
              child: const Text(
                "Reset Filter",
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: const Size(180, 60),
                side: BorderSide.none,
                foregroundColor:
                    bottomButton ? Color(0xFF006EFF) : Colors.white,
                backgroundColor:
                    bottomButton ? Colors.white : Color(0xFF006EFF),
              ),
              onPressed: () {
                bottomButton2 = true;
                bottomButton = false;
                setState(() {});
              },
              child: const Text("Apply"),
            ),
            label: ""),
      ]),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Caregory",
                      style: StyleText.textH3,
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
                    const Gap(30),
                    const Text(
                      "Price Range",
                      style: StyleText.textH3,
                    ),
                    RangeSlider(
                      activeColor: const Color(0xFF006EFF),
                      labels: RangeLabels(rangeSliderValues.start.toString(),
                          rangeSliderValues.end.toString()),
                      values: rangeSliderValues,
                      min: 100,
                      max: 5000,
                      onChanged: (value) {
                        rangeSliderValues = value;
                        setState(() {});
                      },
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$100",
                          style: StyleText.textH4,
                        ),
                        Text(
                          "\$500",
                          style: StyleText.textH4,
                        ),
                        Text(
                          "\$1000",
                          style: StyleText.textH4,
                        ),
                        Text(
                          "\$1500",
                          style: StyleText.textH4,
                        ),
                        Text(
                          "\$3000",
                          style: StyleText.textH4,
                        ),
                        Text(
                          "\$5000",
                          style: StyleText.textH4,
                        ),
                      ],
                    ),
                    const Gap(30),
                    const Text(
                      "Reviews",
                      style: StyleText.textH3,
                    ),
                    ListTile(
                      title: Flexible(
                        child: Row(
                          children: [
                            for (int i = 0; i < 5; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            const Text(
                              "4.5 and above",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio<String>(
                        value: "1",
                        groupValue: _selectedvalue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Flexible(
                        child: Row(
                          children: [
                            for (int i = 0; i < 5; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            const Text(
                              "4.0-4.5",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio<String>(
                        value: "2",
                        groupValue: _selectedvalue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Flexible(
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            const Icon(
                              Icons.star_border,
                            ),
                            Gap(4),
                            const Text(
                              "3.5-4.0",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio<String>(
                        value: "3",
                        groupValue: _selectedvalue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Flexible(
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            for (int i = 0; i < 2; i++) ...[
                              const Icon(
                                Icons.star_border,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            const Text(
                              "3.0-3.5",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio<String>(
                        value: "4",
                        groupValue: _selectedvalue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Flexible(
                        child: Row(
                          children: [
                            for (int i = 0; i < 2; i++) ...[
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            for (int i = 0; i < 3; i++) ...[
                              const Icon(
                                Icons.star_border,
                              ),
                              const SizedBox(
                                  width:
                                      4), // Add some space between icons and text
                            ],
                            const Text(
                              "2.5-3.0",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio<String>(
                        value: "5",
                        groupValue: _selectedvalue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "Caregory",
                      style: StyleText.textH3,
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
                                backgroundColor: selectod2 == i
                                    ? const Color(0xFF006EFF)
                                    : const Color.fromARGB(255, 217, 215, 215),
                              ),
                              onTap: () {
                                selectod2 = i;
                                setState(() {});
                              },
                            ),
                            const SizedBox(width: 20),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
