import 'package:beltei/slideshow.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

// ignore: camel_case_types
class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 55,
          backgroundColor: const Color.fromARGB(255, 30, 96, 144),
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/beltei.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const SizedBox(width: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "សាលា  ប៊ែលធី  អន្តរជាតិ",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "khmer",
                          color: Colors.white),
                    ),
                    Text(
                      "BELTEI  INTERNATIONAL  SCHOOL",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: "times",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.4, // 40% of screen height
              child: const Slideshow(),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 30, 96, 144),
              height: MediaQuery.of(context).size.height *
                  0.05, // 5% of screen height
              child: const Center(
                child: Text(
                  "BELTEI, The Best Quality of Education in Cambodia!",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "times",
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 221, 221, 221),
              height: MediaQuery.of(context).size.height *
                  0.07, // 7% of screen height
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "asset/cambodiaflag.png",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width *
                              0.09, // 9% of screen width
                        ),
                        const Text(
                          "ភាសារខ្មែរ",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "times",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "asset/britflag.png",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width *
                              0.09, // 9% of screen width
                        ),
                        const Text(
                          "English",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "times",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                    double size = constraints.maxWidth * 0.5;
                                    return ClipOval(
                                      child: Image.asset(
                                        "asset/chomnab.png",
                                        fit: BoxFit.cover,
                                        width: size,
                                        height: size,
                                      ),
                                    );
                                  }),
                                  const Text("Chomnab"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 7, 255, 81),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 73, 7, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                color: const Color.fromARGB(255, 255, 0, 212)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height *
                0.01, // Adjusts padding based on screen height
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tv),
                label: 'Classroom',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_outlined), label: "More"),
            ],
            currentIndex: 0, // Default selected index
            onTap: (int index) {
              // Handle item tap
            },
          ),
        ),
      );
    }
  }
}
