import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/widgets/tabview_1_area.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

class TabBarArea extends StatelessWidget {
  const TabBarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
              indicatorColor: AppColors.color2,
              unselectedLabelColor: AppColors.color5,
              tabs: [
                Tab(
                  child: Text(
                    "About Item",
                    style: customTextStyle(
                        context, 14, AppColors.color2, FontWeight.w700, 1.4),
                  ),
                ),
                Tab(
                  child: Text(
                    "Reviews",
                    style: customTextStyle(
                        context,
                        14,
                        AppColors.color5.withOpacity(0.5),
                        FontWeight.w700,
                        1.4),
                  ),
                ),
              ]),
          const SizedBox(
            //Add this to give TabBarView height
            // height: MediaQuery.of(context).size.height,
            height: 1850,
            child: TabBarView(children: [
              // 1st tabview area
              TableViewOneSection(),
              // 2nd tabview area
              SizedBox.shrink(),
            ]),
          ),
        ],
      ),
    );
  }
}
