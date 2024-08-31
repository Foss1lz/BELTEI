import 'package:flutter/material.dart';

class Classroom extends StatefulWidget {
  const Classroom({super.key});

  @override
  State<Classroom> createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/beltei.png",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Text(
              "E-LEARNING",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "nutito",
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 157, 214)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.10, //space between logo and button
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.45,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Sets the border radius
                  ),
                ),
                child: const Text(
                  "Log In",
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.04, //space between buton
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.45,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Sets the border radius
                  ),
                ),
                child: const Text(
                  "Create New Account",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
