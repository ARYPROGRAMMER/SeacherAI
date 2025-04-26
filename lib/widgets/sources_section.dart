import 'package:flutter/material.dart';
import 'package:searchai/theme/colors.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  List<Map<String, dynamic>> searchResults = [
    {"title": "WOWWWWWWWWWWWWWWWWWW", "url": "www.google.com"},
    {"title": "WOWWWWWWWWWWWWWWWWWW", "url": "www.google.com"},
    {"title": "WOWWWWWWWWWWWWWWWWWW", "url": "www.google.com"},
    {"title": "WOWWWWWWWWWWWWWWWWWW", "url": "www.google.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.source_rounded, color: Colors.white70),
            SizedBox(width: 8),
            Text(
              "Sources",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Wrap(
          spacing: 16,
          runSpacing: 16,
          children:
              searchResults.map((res) {
                return Container(
                  padding: EdgeInsets.all(16),
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.cardColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        res["title"],
                        style: TextStyle(fontWeight: FontWeight.w500),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),

                      Text(
                        res["url"],
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
