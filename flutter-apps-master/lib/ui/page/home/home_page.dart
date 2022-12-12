import 'package:flutter/material.dart';

import '../user/profile_page.dart';
import '../widget/app_bar.dart';
import 'widget/feed.dart';
import 'widget/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBar(
        context,
        isLeading: false,
      ),
      body: Column(
        children: const [
          StoryWidget(),
          Expanded(flex: 1, child: FeedWidget()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: const Key('home'),
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    );
  }
}
