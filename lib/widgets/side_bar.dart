import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchai/theme/colors.dart';
import 'package:searchai/widgets/sidebar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: isCollapsed ? 64 : 142,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic_rounded,
            color: AppColors.whiteColor,
            size: isCollapsed ? 32 : 56,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isCollapsed
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 22),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.add_rounded,
                  text: "Home",
                ),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.search_rounded,
                  text: "Search",
                ),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.language_rounded,
                  text: "Spaces",
                ),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.auto_awesome_rounded,
                  text: "Discover",
                ),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.cloud_outlined,
                  text: "Library",
                ),

                const Spacer(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right_rounded
                    : Icons.keyboard_arrow_left_rounded,
                color: AppColors.iconGrey,
                size: 28,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
