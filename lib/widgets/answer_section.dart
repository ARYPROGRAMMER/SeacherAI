import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:searchai/theme/colors.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse = """
The current score between Real Madrid (RMA) and Barcelona (BARCA) in the Copa del Rey final is 2-2 after regular time, and the match has gone into extra time. 

- Pedri opened the scoring for Barcelona.
- Kylian Mbappe equalized for Real Madrid with a direct free-kick, his first in senior football.
- Aurelien Tchouameni then gave Real Madrid the lead with a headed goal.
- Ferran Torres scored the equalizer for Barcelona in the 82nd minute, making it 2-2.

The match is being played at Sevilla’s La Cartuja Stadium in front of 70,000 spectators[1][2][8].

Citations:
[1] https://www.timesnownews.com/sports/football/real-madrid-vs-barcelona-live-score-updates-copa-del-rey-final-el-clasico-latest-goal-alerts-liveblog-151507047
[2] https://sports.ndtv.com/football/barcelona-vs-real-madrid-final-live-score-copa-del-rey-2024-25-football-match-live-scorecard-updates-8264669
[3] https://en.as.com/soccer/barcelona-vs-real-madrid-copa-del-rey-final-el-clasico-score-stats-and-updates-n/
[4] https://www.bbc.com/sport/football/live/c3r811ypn23t
[5] https://www.standard.co.uk/sport/football/fc-barcelona-vs-real-madrid-live-stream-latest-score-updates-result-copa-del-rey-final-b1224476.html
[6] https://www.aljazeera.com/sports/liveblog/2025/4/26/live-barcelona-vs-real-madrid-copa-del-rey-final
[7] https://www.nytimes.com/athletic/live-blogs/barcelona-vs-real-madrid-live-updates-el-clasico-score-result/pKojA7RCWrjq/
[8] https://www.mykhel.com/football/barcelona-vs-real-madrid-live-score-copa-del-rey-final-el-clasico-latest-updates-commentary-357867.html

---
Answer from Perplexity: https://www.perplexity.ai/search/what-is-rmavs-barca-score-giPL_sXUQQyad.uOA0MuNQ?utm_source=copy_output
  """;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SearchAI",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        Markdown(
          data: fullResponse,
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            codeblockDecoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            code: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
