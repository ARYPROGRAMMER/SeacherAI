import 'package:flutter/material.dart';
import 'package:searchai/theme/colors.dart';

class SearchbarButton extends StatefulWidget {
  final IconData icon;
  final String text;

  const SearchbarButton({super.key, required this.icon, required this.text});

  @override
  State<SearchbarButton> createState() => _SearchbarButtonState();
}

class _SearchbarButtonState extends State<SearchbarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Icon(widget.icon, color: AppColors.iconGrey),
          const SizedBox(width: 8),
          Text(widget.text, style: TextStyle(color: AppColors.textGrey)),
        ],
      ),
    );
  }
}
