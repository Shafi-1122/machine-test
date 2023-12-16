import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepoCard extends StatelessWidget {
  final String username;
  final String profileImageUrl;
  final String description;
  final int stargazersCount;

  const RepoCard(
    BuildContext context, {super.key, 
    required this.username,
    required this.profileImageUrl,
    required this.description,
    required this.stargazersCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Card(
        margin: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: CircleAvatar(
            // radius: 40,
            backgroundImage: NetworkImage(profileImageUrl),
          ),
          title: Text(
            username,
            style: GoogleFonts.mPlusRounded1c(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               AutoSizeText(
              description,
              style: GoogleFonts.mPlusRounded1c(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  const SizedBox(width: 4.0),
                  Text(
                    '$stargazersCount stars',
                    style: GoogleFonts.mPlusRounded1c(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
