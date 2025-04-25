import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchai/theme/colors.dart';
import 'package:searchai/widgets/searchbar_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Where Knowledge Begins",
          style: GoogleFonts.ibmPlexMono(
            fontSize: 38,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5,
          ),
        ),

        const SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(color: AppColors.searchBar),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Your Mind...",
                  hintStyle: TextStyle(color: AppColors.textGrey, fontSize: 16),
                  border: InputBorder.none,
                ),
              ),

              Row(
                children: [
                  SearchbarButton(
                    icon: Icons.auto_awesome_rounded,
                    text: "Focus",
                  ),
                  const SizedBox(width: 12),
                  SearchbarButton(
                    icon: Icons.add_circle_rounded,
                    text: "Attach",
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: AppColors.submitButton,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: AppColors.background,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
