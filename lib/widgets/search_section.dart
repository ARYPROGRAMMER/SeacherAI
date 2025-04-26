import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchai/services/chat_web_service.dart';
import 'package:searchai/theme/colors.dart';
import 'package:searchai/widgets/searchbar_button.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final queryController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "SearchAI - Improve Knowledge",
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
          decoration: BoxDecoration(
            color: AppColors.searchBar,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.searchBarBorder, width: 1.5),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: queryController,
                  decoration: InputDecoration(
                    hintText: "What's on Your Mind...",
                    hintStyle: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
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
                    InkWell(
                      onTap: () {
                        ChatWebService().chat(queryController.text.trim());
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
