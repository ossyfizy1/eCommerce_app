import 'package:flutter/material.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

class RecommendedProduct extends StatefulWidget {
  const RecommendedProduct({super.key});

  @override
  State<RecommendedProduct> createState() => _RecommendedProductState();
}

class _RecommendedProductState extends State<RecommendedProduct> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          2,
          (index) => Container(
            width: MediaQuery.of(context).size.width / 2.3,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 0, color: AppColors.color5.withOpacity(0.05))),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/images/tshirt.jpeg",
                        fit: BoxFit.fill, height: 170, width: 200),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.color3,
                        ))
                  ],
                ),
                Container(
                  color: AppColors.color3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Shirt",
                          style: customTextStyle(context, 14, AppColors.color5,
                              FontWeight.w400, 1.4),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Essentials Men's Short-Sleeve Crewneck T-shirt",
                          style: customTextStyle(context, 15, AppColors.color5,
                              FontWeight.w700, 1.4),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.color10,
                                  ),
                                  Text(
                                    "4.9 | 2356",
                                    style: customTextStyle(context, 14,
                                        AppColors.color5, FontWeight.w400, 1.4),
                                  ),
                                ],
                              ),
                              Text(
                                "\$12.00",
                                style: customTextStyle(context, 17,
                                    AppColors.color2, FontWeight.w700, 1.4),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
