import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/bottom_nav_bar.dart';
import 'package:market_place/modules/home_page/widgets/home_banner_slider.dart';
import 'package:market_place/modules/home_page/widgets/home_search_area.dart';
import 'package:market_place/modules/home_page/widgets/home_sticky_header_area.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

import 'widgets/sub_icon_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color9,
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.color3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppColors.color9,
                child: Column(
                  children: const [
                    SeachBarArea(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  const HomeBannerSlider(),
                  Positioned(
                    left: 10,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#FASHION DAY",
                          style: customTextStyle(context, 15, AppColors.color5,
                              FontWeight.w700, 1.4),
                        ),
                        Text(
                          "80% OFF",
                          style: customTextStyle(context, 40, AppColors.color5,
                              FontWeight.w700, 1.4),
                        ),
                        Text(
                          "Discover fashion that suits to\nyour style",
                          style: customTextStyle(context, 14, AppColors.color5,
                              FontWeight.w700, 1.4),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RawMaterialButton(
                          fillColor: AppColors.color5.withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Check this out ",
                              style: customTextStyle(context, 14,
                                  AppColors.color3, FontWeight.w700, 1.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: SubIconSlider(),
              ),
              const StickyHeaderArea()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
