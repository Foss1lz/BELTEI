import 'package:beltei/Indexstack.dart';
import 'package:flutter/material.dart';
// Make sure to adjust the import path

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _showSplashScreen();
  }

  void _showSplashScreen() async {
    await Future.delayed(
        const Duration(seconds: 3)); // Duration of the splash screen

    // Ensure this context is still valid
    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const Indexstack(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0); // Slide from bottom
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration:
            const Duration(milliseconds: 500), // Duration of transition
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "asset/beltei.png", // Replace with your splash screen logo asset
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
