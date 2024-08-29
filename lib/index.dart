import 'package:beltei/slideshow.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

// ignore: camel_case_types
class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: const Color.fromARGB(255, 30, 96, 144),
        flexibleSpace: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/beltei.png",
                fit: BoxFit.cover,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "សាលា  ប៊ែលធី  អន្តរជាតិ",
                    style: TextStyle(
                        fontSize: 15, fontFamily: "khmer", color: Colors.white),
                  ),
                  Text(
                    "BELTEI  INTERNATIONAL  SCHOOL",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: "times",
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity, // Optional: make container full width
            height: 350, // Set the desired height for the slideshow
            child: Slideshow(),
          ),
          Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 30, 96, 144),
              height: 35,
              child: const Center(
                  child: Text(
                "BELTEI, The Best Quality of Education in Cambodia!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "times",
                  fontSize: 15,
                ),
              ))),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 221, 221, 221),
            height: 55,
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
                        width: 50,
                      ),
                      const Text(
                        "ភាសារខ្មែរ",
                        style: TextStyle(
                            fontFamily: "times", fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 11,
                    // color: Colors.amber,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "asset/britflag.png",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      const Text(
                        "English",
                        style: TextStyle(
                            fontFamily: "times", fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 8,
                    //      color: Colors.amber,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 300,
            color: const Color.fromARGB(255, 0, 0, 0), // Red background color
            child: Column(
              children: [
                // Row with four equally spaced containers
                Container(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: double
                              .infinity, // Makes each container take the full height of the parent
                          color: Colors.amber, // Amber color
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          color:
                              const Color.fromARGB(255, 0, 0, 0), // Black color
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          color: const Color.fromARGB(
                              255, 7, 255, 81), // Green color
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          color: const Color.fromARGB(
                              255, 73, 7, 255), // Purple color
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.orange,
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.grid_view_outlined), label: "More")
        ],
        currentIndex: 0, // Default selected index
        onTap: (int index) {
          // Handle item tap
        },
      ),
    );
  }
}
