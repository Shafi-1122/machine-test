import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machinetest/view/homepage.dart';
import 'package:machinetest/view/utilities/utilities.dart';
import 'package:machinetest/view/widgets/repocard.dart';
import 'package:machinetest/view_model/repo_provider.dart';
import 'package:provider/provider.dart';

class RepoDetails extends StatefulWidget {
  const RepoDetails({super.key});

  @override
  State<RepoDetails> createState() => _RepoDetailsState();
}

class _RepoDetailsState extends State<RepoDetails> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<RepoProvider>(context, listen: false).fetchAlbum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
          label: const Text('View UI'),
          icon: const Icon(Icons.navigate_next),
        ),
        body: Consumer<RepoProvider>(builder: (context, consumer, child) {
          if (consumer.datastatus == Datastatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (consumer.datastatus == Datastatus.loaded) {
            return Column(
              children: [
                   const SizedBox(
                        height: 13,
                      ),
                      Text(
                        'Most Starred Repos',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.2,
                  child: ListView.builder(
                    itemCount: consumer.repos.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      // print(consumer.repos.items.length);
                      return ListTile(
                        title: RepoCard(context,
                            username:consumer.repos.items[index].name.toString() ,
                            profileImageUrl: consumer.repos.items[index].owner.avatarUrl,
                            description: consumer.repos.items[index].description.toString(),
                            stargazersCount: consumer.repos.items[index].stargazersCount),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (consumer.datastatus == Datastatus.failed) {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
         return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
