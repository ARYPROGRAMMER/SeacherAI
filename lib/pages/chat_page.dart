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
          SideBar(),
          const SizedBox(width: 100),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
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

          Placeholder(strokeWidth: 0, color: AppColors.background),
        ],
      ),
    );
  }
}
