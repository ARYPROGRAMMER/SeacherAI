import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:searchai/services/chat_web_service.dart';
import 'package:searchai/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  bool isLoading = true;

  String fullResponse = """
The Copa del Rey 2024-25 final between Barcelona and Real Madrid, held at Sevilla’s Estadio de La Cartuja, delivered a thrilling and intense El Clásico encounter that ended 2-2 after extra time, pushing the match towards a penalty shootout.

**Match Summary:**

- **First Half:** Barcelona took an early lead through a stunning long-range strike by Pedri in the 28th minute. This goal was notable as it was Pedri’s first in all competitions in his last 15 games, and it gave Barcelona the advantage going into halftime[1][2][4].

- **Second Half:** Real Madrid staged a strong comeback. Kylian Mbappé, who started on the bench due to an ankle injury, came on and scored his first direct free-kick goal in senior football in the 70th minute to equalize. Shortly after, Aurélien Tchouaméni headed Real Madrid into the lead in the 77th minute[1][2][4].

- **Late Equalizer:** Barcelona’s Ferran Torres capitalized on a pass from Lamine Yamal and skillfully rounded Real Madrid’s goalkeeper Thibaut Courtois to score the equalizer in the 84th minute, leveling the score at 2-2[1][2][4].

**Extra Time and Controversies:**

- The match saw tense moments in extra time, including a VAR review that overturned a penalty call against Real Madrid in the 96th minute, much to the relief of Madrid and frustration of Barcelona[1][2].

- Both teams had chances but failed to score again, leading to a nail-biting penalty shootout scenario[1][2].

**Context and Stakes:**

- This final was the third meeting between the two giants this season, with Barcelona having dominated the previous encounters: a 4-0 league win at the Bernabéu and a 5-2 victory in the Spanish Super Cup final[2][3].

- The match was played in front of approximately 70,000 spectators, including King Felipe VI, who was set to award the trophy to the winners[2].

- Real Madrid was under pressure after a disappointing Champions League quarter-final exit, while Barcelona aimed to add another Copa del Rey trophy to their record 31 titles[3].

**Key Players:**

- Barcelona’s goals came from Pedri and Ferran Torres, with significant contributions from young talents like Lamine Yamal.

- Real Madrid’s comeback was powered by Mbappé’s free-kick brilliance and Tchouaméni’s aerial threat.

- Both teams featured strong defensive and midfield performances, with notable interceptions by Luka Modrić and defensive efforts by Jules Koundé and others[2][4][6].

In summary, the Copa del Rey final was a classic El Clásico filled with drama, skill, and high stakes, ending 2-2 after extra time and heading towards a decisive penalty shootout to crown the champion[1][2][4].

Citations:
[1] https://sports.ndtv.com/football/barcelona-vs-real-madrid-final-live-score-copa-del-rey-2024-25-football-match-live-scorecard-updates-8264669
[2] https://www.timesnownews.com/sports/football/real-madrid-vs-barcelona-live-score-updates-copa-del-rey-final-el-clasico-latest-goal-alerts-liveblog-151507047
[3] https://en.as.com/soccer/barcelona-vs-real-madrid-copa-del-rey-final-el-clasico-score-stats-and-updates-n/
[4] https://www.espn.com.sg/football/match/_/gameId/735156
[5] https://www.fcbarcelona.com/en/copa-del-rey-2025-final
[6] https://www.espn.in/football/match/_/gameId/735156/real-madrid-barcelona
[7] https://www.aljazeera.com/sports/liveblog/2025/4/26/live-barcelona-vs-real-madrid-copa-del-rey-final
[8] https://www.fancode.com/football/matches/copa-del-rey-202425/barcelona-vs-real-madrid/commentary/122717
[9] https://www.mykhel.com/football/barcelona-vs-real-madrid-live-score-copa-del-rey-final-el-clasico-latest-updates-commentary-357867.html

---
Answer from Perplexity: https://www.perplexity.ai/search/what-is-rmavs-barca-score-giPL_sXUQQyad.uOA0MuNQ?utm_source=copy_output
  """;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().contentStream.listen((data) {
      if (isLoading) {
        fullResponse = "";
      }

      setState(() {
        fullResponse += data["data"];
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SearchAI",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        Skeletonizer(
          enabled: isLoading,
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet: MarkdownStyleSheet.fromTheme(
              Theme.of(context),
            ).copyWith(
              codeblockDecoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              code: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
