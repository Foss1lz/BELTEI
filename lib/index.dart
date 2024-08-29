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
            height: 300, // Set the desired height for the slideshow
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
            color: const Color.fromARGB(255, 255, 7, 81),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 52, 160, 142),
                  child: Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
