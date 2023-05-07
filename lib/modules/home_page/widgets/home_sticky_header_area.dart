import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/product_list_display.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class StickyHeaderArea extends StatefulWidget {
  const StickyHeaderArea({super.key});

  @override
  State<StickyHeaderArea> createState() => _StickyHeaderAreaState();
}

class _StickyHeaderAreaState extends State<StickyHeaderArea> {
  @override
  Widget build(BuildContext context) {
    return StickyHeader(
        header: Container(
          height: 60.0,
          color: const Color.fromARGB(255, 240, 238, 238),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Sale Product',
                style: customTextStyle(
                    context, 20, AppColors.color5, FontWeight.w700, 1.4),
              ),
              Text(
                'See more',
                style: customTextStyle(
                    context, 14, AppColors.color2, FontWeight.w700, 1.4),
              ),
            ],
          ),
        ),
        content: const ProductList());
  }
}
