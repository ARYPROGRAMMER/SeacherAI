import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchai/theme/colors.dart';

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
            letterSpacing: -0.5
          ),
        ),

        const SizedBox(height: 32,),
        Container(
          width: 700,
          decoration: BoxDecoration(
            color: AppColors.searchBar
          ),
        )



      ],

    );
  }
}
