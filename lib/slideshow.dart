import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  final List<String> _images = [
    'asset/visal.png', // Replace with your image asset paths
    'asset/chhaty.png',
    'asset/chomnab.png',
  ];

  final PageController _pageController = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page?.toInt() ?? 0) + 1;
        if (nextPage >= _images.length) nextPage = 0;
        _pageController.animateToPage(nextPage,
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Image.asset(
              _images[index],
              fit: BoxFit.cover,
            );
          },
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _images.length,
              effect: WormEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}