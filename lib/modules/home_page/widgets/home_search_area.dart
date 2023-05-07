import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/cart_and_chat_area.dart';
import 'package:market_place/shared_utilities/app_colors.dart';

class SeachBarArea extends StatefulWidget {
  const SeachBarArea({super.key});

  @override
  State<SeachBarArea> createState() => _SeachBarAreaState();
}

class _SeachBarAreaState extends State<SeachBarArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: AppColors.color5,
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: const Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const CartAndChartUs(
            icon: Icons.shopping_cart,
            amount: 1,
          ),
          const CartAndChartUs(
            icon: Icons.messenger_outlined,
            amount: 2,
          ),
        ],
      ),
    );
  }
}
