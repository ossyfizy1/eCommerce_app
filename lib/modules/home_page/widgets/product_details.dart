import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/tabview_area.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';
import 'cart_and_chat_area.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color3,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, true);
          },
          child: Icon(
            Icons.adaptive.arrow_back,
            color: AppColors.color5,
          ),
        ),
        elevation: 0,
        actions: [
          actionArea(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              productImgePreviewAndThumbnail(context),
              productTitleDescription(context),
              tabSection(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: customTextStyle(
                          context,
                          15,
                          AppColors.color5.withOpacity(0.3),
                          FontWeight.w700,
                          1.4),
                    ),
                    Text(
                      "\$18.00",
                      style: customTextStyle(
                          context, 25, AppColors.color2, FontWeight.w700, 1.4),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.color2,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              color: AppColors.color3,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: customTextStyle(context, 20,
                                  AppColors.color3, FontWeight.w700, 1.4),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.color5.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Buy Now",
                          style: customTextStyle(context, 20, AppColors.color3,
                              FontWeight.w500, 1.4),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  productImgePreviewAndThumbnail(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColors.color5.withOpacity(0.03),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.color5.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/tshirt.jpeg",
                    height: 300, width: 200),
              ),
              thumbNail(top: 20),
              thumbNail(top: 80),
              thumbNail(top: 140),
              thumbNail(top: 200),
            ],
          ),
        ),
      ],
    );
  }

  productTitleDescription(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.dashboard_customize_sharp,
              color: AppColors.color5.withOpacity(0.3),
            ),
            Text(
              "tokobaju.id",
              style: customTextStyle(context, 14,
                  AppColors.color5.withOpacity(0.4), FontWeight.w400, 1.4),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 250,
          child: Text(
            "Essentials Men's Short-Sleeve Crewneck T-shirt",
            style: customTextStyle(
                context, 15, AppColors.color5, FontWeight.w700, 1.4),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.color10,
                ),
                Text(
                  " 4.9 Ratings",
                  style: customTextStyle(context, 15,
                      AppColors.color5.withOpacity(0.3), FontWeight.w700, 1.4),
                ),
              ],
            ),
            Text(
              "* ",
              style: customTextStyle(context, 15,
                  AppColors.color5.withOpacity(0.3), FontWeight.w700, 1.4),
            ),
            Text(
              "2.3k+ Reviews",
              style: customTextStyle(context, 15,
                  AppColors.color5.withOpacity(0.3), FontWeight.w700, 1.4),
            ),
            Text(
              "* ",
              style: customTextStyle(context, 15,
                  AppColors.color5.withOpacity(0.3), FontWeight.w700, 1.4),
            ),
            Text(
              "2.9k+ Sold",
              style: customTextStyle(context, 15,
                  AppColors.color5.withOpacity(0.3), FontWeight.w700, 1.4),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  actionArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.favorite,
          color: AppColors.color7,
        ),
        const SizedBox(
          width: 30,
        ),
        Icon(
          Icons.share,
          color: AppColors.color5,
        ),
        const SizedBox(
          width: 30,
        ),
        CartAndChartUs(
          icon: Icons.shopping_bag_sharp,
          amount: 1,
          color: AppColors.color5,
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }

  thumbNail({required int top}) {
    return Positioned(
      left: 15,
      top: top.toDouble(),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.color3, borderRadius: BorderRadius.circular(10)),
        width: 50,
        height: 50,
        child: Center(
            child: Image.asset(
          "assets/images/tshirt.jpeg",
          height: 40,
          width: 40,
          fit: BoxFit.fill,
        )),
      ),
    );
  }

  Widget tabSection(BuildContext context) {
    return const TabBarArea();
  }
}
