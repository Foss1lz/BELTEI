import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Morescreen extends StatefulWidget {
  const Morescreen({super.key});

  @override
  State<Morescreen> createState() => _MorescreenState();
}

// ignore: camel_case_types
class _MorescreenState extends State<Morescreen> {
  // ignore: non_constant_identifier_names
  bool isSwitch_Noti = false;
  bool isSwitch_Dark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 221, 221),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 96, 144),
          centerTitle: true,
          title: const Text(
            "More",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notification",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Transform.scale(
                        scale: 1.1,
                        child: Switch(
                            focusColor: Colors.amber,
                            activeColor: Colors.green,
                            value: isSwitch_Noti,
                            onChanged: (value) {
                              setState(() {
                                isSwitch_Noti = value;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dark",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Transform.scale(
                        scale: 1.1,
                        child: Switch(
                            focusColor: Colors.amber,
                            activeColor: Colors.green,
                            value: isSwitch_Dark,
                            onChanged: (value) {
                              setState(() {
                                isSwitch_Dark = value;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      const Icon(Icons.translate),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        "Chage Language",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      const Icon(Icons.description),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        "Term & Conditions",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      const Icon(Icons.help),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        "Help",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      const Icon(Icons.info),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        "About",
                        style: GoogleFonts.hedvigLettersSans(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
