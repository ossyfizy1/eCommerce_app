import 'package:flutter/material.dart';
import 'package:market_place/shared_utilities/app_colors.dart';
import 'package:market_place/shared_utilities/custom_text.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              menuItem(context, "Home", Icons.home, 1),
              menuItem(
                  context, "Voucher", Icons.airplane_ticket_outlined, null),
              menuItem(context, "Wallet", Icons.account_balance_wallet_outlined,
                  null),
              menuItem(context, "Settings", Icons.settings_outlined, null),
            ],
          ),
        )
      ],
    );
  }

  menuItem(context, String title, IconData icon, int? index) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: index != null ? AppColors.color2 : AppColors.color5,
        ),
        Text(
          title,
          style: customTextStyle(
              context, 15, AppColors.color5, FontWeight.w700, 1.4),
        ),
      ],
    );
  }
}
