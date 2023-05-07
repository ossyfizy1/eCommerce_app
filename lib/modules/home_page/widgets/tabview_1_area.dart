import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/recommended_products.dart';
import 'package:market_place/shared_utilities/custom_text.dart';
import '../../../shared_utilities/app_colors.dart';

class TableViewOneSection extends StatefulWidget {
  const TableViewOneSection({super.key});

  @override
  State<TableViewOneSection> createState() => _TableViewOneSectionState();
}

class _TableViewOneSectionState extends State<TableViewOneSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        aboutItem(context, "Brand: ", "Color: "),
        const SizedBox(
          height: 10,
        ),
        aboutItem(context, "Category: ", "Material: "),
        const SizedBox(
          height: 10,
        ),
        aboutItem(context, "Condition: ", "Heavy: "),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
        const SizedBox(
          height: 15,
        ),
        descriptionArea(context),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Chat us if there is any you need to ask about this product?",
          style: customTextStyle(context, 15, AppColors.color5.withOpacity(0.5),
              FontWeight.w700, 1.4),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "See less",
              style: customTextStyle(
                  context, 15, AppColors.color2, FontWeight.w700, 1.4),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.keyboard_arrow_up,
              size: 20,
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
        const SizedBox(
          height: 15,
        ),
        ...List.generate(
          3,
          (index) => shippingArea(context, index),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Seller Information:",
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                color: AppColors.color5.withOpacity(0.05),
                borderRadius: BorderRadius.circular(50)),
            width: 60,
            height: 60,
            child: Center(
              child: Text(
                "Thrifting \nStore",
                style: customTextStyle(
                    context, 10, AppColors.color5, FontWeight.w700, 1.4),
              ),
            ),
          ),
          title: Text(
            "Thrifting_Store",
            style: customTextStyle(
                context, 15, AppColors.color5, FontWeight.w700, 1.4),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                "Alimhd 12 Abi na | No. 4 Jaluni kilo ma",
                style: customTextStyle(context, 12,
                    AppColors.color5.withOpacity(0.5), FontWeight.w700, 1.4),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.color2)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color3),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.data_saver_off,
                          size: 15,
                          color: AppColors.color2,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Visit Store",
                          style: customTextStyle(context, 10, AppColors.color2,
                              FontWeight.w700, 1.4),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Reviews & Ratings",
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
        reviewsAndRating(),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Reviews with images & vidoes",
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
        const SizedBox(
          height: 15,
        ),
        reviewsWithImages(),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Top Reviews",
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Text(
                "Showing 3 of 2.5k+ reviews",
                style: customTextStyle(
                    context, 12, AppColors.color8, FontWeight.w700, 1.4),
              ),
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 2.5,
              child: DropdownButtonFormField(
                hint: const Text("popular"),
                style: TextStyle(fontSize: 12, color: AppColors.color2),
                decoration: dropDownInputDecoration(),
                onChanged: (String? newValue) {},
                items: <String>["popular", "related"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: AppColors.color5),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        theReviews(),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                paginationArrows(
                  Icons.adaptive.arrow_back,
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    ...List.generate(
                      3,
                      (index) => Row(
                        children: [
                          Text(
                            "${index + 1}",
                            style: customTextStyle(context, 15,
                                AppColors.color8, FontWeight.w700, 1.4),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                paginationArrows(
                  Icons.adaptive.arrow_forward,
                ),
              ],
            ),
            Text(
              "See more",
              style: customTextStyle(
                  context, 15, AppColors.color2, FontWeight.w700, 1.4),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommendation",
              style: customTextStyle(
                  context, 15, AppColors.color5, FontWeight.w700, 1.4),
            ),
            Text(
              "See more",
              style: customTextStyle(
                  context, 15, AppColors.color2, FontWeight.w700, 1.4),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const RecommendedProduct(),
      ],
    );
  }

  aboutItem(context, String title1, String title2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title1,
              style: customTextStyle(context, 14,
                  AppColors.color5.withOpacity(0.5), FontWeight.w700, 1.4),
            ),
            Text(
              "CHYSISDGK",
              style: customTextStyle(
                  context, 14, AppColors.color5, FontWeight.w700, 1.4),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              title2,
              style: customTextStyle(context, 14,
                  AppColors.color5.withOpacity(0.5), FontWeight.w700, 1.4),
            ),
            Text(
              "CHYSISDGK",
              style: customTextStyle(
                  context, 14, AppColors.color5, FontWeight.w700, 1.4),
            ),
          ],
        ),
      ],
    );
  }

  descriptionArea(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description:",
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            ...List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 5,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Long-sleeve jhjdss hjsjd hfgfjs hdsjgfs com.",
                      style: customTextStyle(
                          context,
                          15,
                          AppColors.color5.withOpacity(0.5),
                          FontWeight.w700,
                          1.4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  shippingArea(context, index) {
    List<String> shippingDetails = ["Delivery:", "Shipping:", "Arrival:"];
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  shippingDetails[index],
                  style: customTextStyle(context, 14,
                      AppColors.color5.withOpacity(0.5), FontWeight.w700, 1.4),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Shipping from Junksj jsdj jsds ",
                  style: customTextStyle(
                      context, 14, AppColors.color5, FontWeight.w700, 1.4),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  reviewsAndRating() {
    List<int> ratingCount = [10, 60, 80, 120, 154];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Text(
                      "4.9",
                      style: customTextStyle(
                          context, 40, AppColors.color5, FontWeight.w700, 1.4),
                    ),
                    Positioned(
                      left: 70,
                      top: 25,
                      child: Text(
                        "/5.0",
                        style: customTextStyle(context, 15, AppColors.color8,
                            FontWeight.w700, 1.4),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 60,
                      child: Row(
                        children: [
                          ...List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.color6,
                                  )),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 100,
                      child: Text(
                        "2.5k+ Reviews",
                        style: customTextStyle(context, 15, AppColors.color8,
                            FontWeight.w700, 1.4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            children: [
              ...List.generate(
                5,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.color6,
                    ),
                    Text(
                      "${index + 1}".toString(),
                      style: customTextStyle(
                          context, 15, AppColors.color8, FontWeight.w700, 1.4),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.color5.withOpacity(0.09)),
                        ),
                        Container(
                          height: 10,
                          width: ratingCount[index].toDouble() / 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.color2),
                        )
                      ],
                    ),
                    Text(
                      ratingCount[index].toString(),
                      style: customTextStyle(
                          context, 15, AppColors.color5, FontWeight.w700, 1.4),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  reviewsWithImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
            4,
            (index) => Container(
                  decoration: BoxDecoration(
                      color: AppColors.color3,
                      borderRadius: BorderRadius.circular(10)),
                  width: 70,
                  height: 70,
                  child: Center(
                      child: Image.asset(
                    "assets/images/tshirt.jpeg",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  )),
                )),
      ],
    );
  }

  theReviews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/user.jpeg"),
                        ))),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Johnny Bravo",
                  style: customTextStyle(
                      context, 12, AppColors.color5, FontWeight.w700, 1.4),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.color6,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "5.0",
                  style: customTextStyle(
                      context, 15, AppColors.color5, FontWeight.w700, 1.4),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "...",
                  style: customTextStyle(
                      context, 10, AppColors.color5, FontWeight.w700, 1.4),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  3,
                  (index) => Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.color1.withOpacity(0.4),
                              border: Border.all(color: AppColors.color2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Product delivery was okay",
                                style: customTextStyle(context, 10,
                                    AppColors.color2, FontWeight.w700, 1.4),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "According to expectations. This is the best. \nThank you",
          style: customTextStyle(
              context, 10, AppColors.color5, FontWeight.w700, 1.4),
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
                  Icons.thumb_up,
                  color: AppColors.color2,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Helpful ?",
                  style: customTextStyle(
                      context, 12, AppColors.color2, FontWeight.w700, 1.4),
                ),
              ],
            ),
            Text(
              "Yesterday",
              style: customTextStyle(
                  context, 12, AppColors.color8, FontWeight.w700, 1.4),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColors.color5.withOpacity(0.5),
        ),
      ],
    );
  }

  paginationArrows(IconData icon) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: AppColors.color5.withOpacity(0.05), shape: BoxShape.circle),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Icon(
          icon,
          size: 10,
        ),
      )),
    );
  }

  InputDecoration dropDownInputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.color3,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color5, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(6.0))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color5, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(6.0))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color5, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(6.0))),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.color5, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(6.0))),
    );
  }
}
