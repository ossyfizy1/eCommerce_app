import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/model/sub_icon_slider_model.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

class SubIconSlider extends StatefulWidget {
  const SubIconSlider({Key? key}) : super(key: key);

  @override
  State<SubIconSlider> createState() => _SubIconSliderState();
}

class _SubIconSliderState extends State<SubIconSlider> {
  final controller = PageController(initialPage: 0);
  int indicatorIndex = 0;

  List<SubIconModel> sliderData = [
    SubIconModel(
        id: 1, icon: Icons.space_dashboard_outlined, title: "Category"),
    SubIconModel(id: 2, icon: Icons.flight_outlined, title: "Flight"),
    SubIconModel(id: 3, icon: Icons.list_alt_outlined, title: "Bill"),
    SubIconModel(
        id: 4, icon: Icons.data_exploration_outlined, title: "Data plan"),
    SubIconModel(id: 5, icon: Icons.filter_2_rounded, title: "Top Up"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: SizedBox(
            height: 80,
            child: PageView(
              controller: controller,
              onPageChanged: _onPageViewChange,
              children: [...sliderData.map((item) => referralArea(item))],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        indicatorArea()
      ],
    );
  }

  referralArea(SubIconModel item) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  5,
                  (index) => Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.color5.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            sliderData[index].icon,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        sliderData[index].title,
                        style: customTextStyle(context, 12, AppColors.color8,
                            FontWeight.w400, 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  void _onPageViewChange(int value) {
    setState(() {
      indicatorIndex = value;
    });
  }

  indicatorArea() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [...sliderData.map((item) => slideIndicator(item.id))],
      ),
    );
  }

  slideIndicator(int index) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                  color: (indicatorIndex == (index - 1))
                      ? AppColors.color2
                      : AppColors.color4,
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
        const SizedBox(
          height: 29,
        ),
      ],
    );
  }
}
