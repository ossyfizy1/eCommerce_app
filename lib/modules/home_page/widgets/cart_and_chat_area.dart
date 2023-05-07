import 'package:flutter/material.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

class CartAndChartUs extends StatelessWidget {
  final IconData icon;
  final int? amount;
  final Color? color;
  const CartAndChartUs({
    super.key,
    required this.icon,
    this.amount,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 50,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Visibility(
              visible: color != null,
              replacement: Icon(
                icon,
                size: 30,
              ),
              child: Icon(
                icon,
                size: 30,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 2,
            right: 5,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: AppColors.color7),
              child: Center(
                child: Text(
                  amount.toString(),
                  style: customTextStyle(
                      context, 15, AppColors.color3, FontWeight.w400, 1.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
