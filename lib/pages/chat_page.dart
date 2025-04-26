import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:searchai/theme/colors.dart';
import 'package:searchai/widgets/answer_section.dart';
import 'package:searchai/widgets/side_bar.dart';

import '../widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;

  const ChatPage({super.key, required this.question});

  // StreamBuilder(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? SideBar() : const SizedBox(),
          kIsWeb ? const SizedBox(width: 100) : const SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Padding(
                  padding:
                      !kIsWeb ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),

                      // sources
                      SourcesSection(),

                      SizedBox(height: 24),

                      // gemini ans
                      AnswerSection(),
                    ],
                  ),
                ),
              ),
            ),
          ),

          kIsWeb
              ? Placeholder(strokeWidth: 0, color: AppColors.background)
              : const SizedBox(),
        ],
      ),
    );
  }
}
