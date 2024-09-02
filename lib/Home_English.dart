import 'package:flutter/material.dart';
import 'package:beltei/slideshow.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularImageButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;
  final double imageSize; // New parameter for image size
  final BoxFit imageFit; // New parameter for image fit

  const CircularImageButton({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
    this.imageSize = 48.0, // Default size
    this.imageFit = BoxFit.cover, // Default fit
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
            width: MediaQuery.of(context).size.width * 0.08,
            height: MediaQuery.of(context).size.width * 0.08,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
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
            textAlign: TextAlign.center,
            text,
            style: const TextStyle(
              fontSize: 13,
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
  //for row1
  final List<String> imagePaths1 = [
    "asset/news.png",
    "asset/program.png",
    "asset/admission.png",
    "asset/tuition.png",
  ];
  final List<String> text_row1s = [
    "News",
    "Main Programs",
    "Admision",
    "Tuition Fees"
  ];
  //row 2 do change image manually

  //row 3
  final List<String> imagePaths3 = [
    "asset/belteigroup.png",
    "asset/facebook.png",
    "asset/youtube.png",
    "asset/job.png",
  ];
  final List<String> text_row3 = [
    "Website",
    "Facebook",
    "Youtube",
    "Job Opportunity"
  ];
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
                            // width: MediaQuery.of(context).size.width *
                            //     0.09, // Adjusts with screen size
                            width: 45,
                            height: 30,
                          ),
                          const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "ភាសារខ្មែរ",
                              style: TextStyle(
                                // fontSize: MediaQuery.of(context).size.width *
                                //     0.025, // Dynamic font size
                                fontSize: 10,
                                fontFamily: "KhmerOSsiemreap",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                          // width: MediaQuery.of(context).size.width * 0.09,
                          width: 45,
                          height: 30,
                        ),
                        Text(
                          "English",
                          style: GoogleFonts.roboto(
                              // fontSize:
                              //     MediaQuery.of(context).size.width * 0.025,
                              fontSize: 10,
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
                  //Row1
                  Expanded(
                    child: Row(
                      children: List.generate(
                          imagePaths1.length,
                          (index) => Expanded(
                                child: CircularImageButton(
                                  imagePath: imagePaths1[index],
                                  text: text_row1s[index],
                                  onPressed: () {
                                    print("Chomnab-${index + 1} tapped!");
                                  },
                                ),
                              )),
                    ),
                  ),
                  //Row2
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircularImageButton(
                            imagePath: "asset/history.jpg",
                            text: "History and Location",
                            onPressed: () {
                              print("Chomnab-1 tapped!");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color.fromARGB(255, 1, 128, 202)),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 60,
                                  // width: MediaQuery.of(context).size.width *
                                  //     0.20, // Adjust width as needed
                                  // height: MediaQuery.of(context).size.width *
                                  //     0.15, // Adjust height as needed
                                  child: Image.asset(
                                    "asset/elearning.png",
                                    fit:
                                        BoxFit.cover, // Adjust BoxFit as needed
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "សិក្សាតាមប្រព័ន្ធអេឡិចត្រូនិច",
                                  style: TextStyle(
                                      fontFamily: "KhmerOSsiemreap",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                const Text(
                                  "E-Learning",
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircularImageButton(
                            imagePath: "asset/contact.png",
                            text: "Contact",
                            onPressed: () {
                              print("Chomnab-3 tapped!");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Row3
                  Expanded(
                    child: Row(
                      children: List.generate(
                          4,
                          (index) => Expanded(
                                child: CircularImageButton(
                                  imagePath: imagePaths3[index],
                                  text: text_row3[index],
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
