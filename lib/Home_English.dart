import 'package:flutter/material.dart';
import 'package:beltei/slideshow.dart';

class CircularImageButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const CircularImageButton({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: const BorderSide(
              color: Color.fromARGB(255, 158, 158, 158),
              width: 0.5,
            ),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.width * 0.12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, // Border color
                width: 1.0, // Border width
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Home_English extends StatefulWidget {
  const Home_English({super.key});

  @override
  State<Home_English> createState() => _Home_EnglishState();
}

// ignore: camel_case_types
class _Home_EnglishState extends State<Home_English> {
  @override
  Widget build(BuildContext context) {
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
                        fontFamily: "KhmerOSMoul",
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
            height: MediaQuery.of(context).size.height * 0.3,
            child: const Slideshow(),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 30, 96, 144),
            height: MediaQuery.of(context).size.height * 0.04,
            child: const Center(
              child: Text(
                "BELTEI, The Best Quality of Education in Cambodia!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 221, 221, 221),
            height: MediaQuery.of(context).size.height * 0.06,
            child: Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        print("Tap");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "asset/cambodiaflag.png",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.09,
                          ),
                          const Text(
                            "ភាសារខ្មែរ",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "KhmerOSsiemreap",
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  GestureDetector(
                    onTap: () {
                      print("Container tapped!");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "asset/britflag.png",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.09,
                        ),
                        const Text(
                          "English",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
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
                      children: List.generate(
                          4,
                          (index) => Expanded(
                                child: CircularImageButton(
                                  imagePath: "asset/chomnab.png",
                                  text: "Chomnab-${index + 1}",
                                  onPressed: () {
                                    print("Chomnab-${index + 1} tapped!");
                                  },
                                ),
                              )),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircularImageButton(
                            imagePath: "asset/chomnab.png",
                            text: "Chomnab-1",
                            onPressed: () {
                              print("Chomnab-1 tapped!");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CircularImageButton(
                            imagePath: "asset/chomnab.png",
                            text: "Chomnab-2",
                            onPressed: () {
                              print("Chomnab-2 tapped!");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircularImageButton(
                            imagePath: "asset/chomnab.png",
                            text: "Chomnab-3",
                            onPressed: () {
                              print("Chomnab-3 tapped!");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: List.generate(
                          4,
                          (index) => Expanded(
                                child: CircularImageButton(
                                  imagePath: "asset/chomnab.png",
                                  text: "Chomnab-${index + 1}",
                                  onPressed: () {
                                    print("Chomnab-${index + 1} tapped!");
                                  },
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
