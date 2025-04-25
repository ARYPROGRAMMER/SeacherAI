import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SidebarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SidebarButton({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 14, horizontal: 9),
          child: Icon(icon, color: AppColors.iconGrey, size: 28),
        ),
        isCollapsed
            ? SizedBox()
            : Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor.withOpacity(0.7),
              ),
            ),
      ],
    );
  }
}
