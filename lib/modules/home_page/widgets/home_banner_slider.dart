import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeBannerSliderState();
  }
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final List<String> images = [
    "assets/images/banner1.jpeg",
    "assets/images/banner2.jpeg",
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // for (var imageUrl in images) {
      //   precacheImage(NetworkImage(imageUrl), context);
      // }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        // aspectRatio: 2.0,
        // enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
      itemBuilder: (context, index, realIdx) {
        return Image.asset(images[index],
            fit: BoxFit.fill,
            // width: 1000,
            width: double.infinity);
      },
    );
  }
}
