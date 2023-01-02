import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/Chats_page.dart';
import 'package:whatsappclone/pages/calls_page.dart';
import 'package:whatsappclone/pages/community_page.dart';
import 'package:whatsappclone/pages/status_page.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 134, 174, 169),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF075E54),
          iconTheme: IconThemeData(
            color: Color.fromARGB(172, 255, 255, 255),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white12,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'WhatsappClone',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          // backgroundColor: Color(0xFF075E54),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
              icon: Icon(Icons.search_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(213, 255, 255, 255),
            labelColor: Color.fromARGB(172, 255, 255, 255),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.people_alt_rounded,
                  // color: Colors.white,
                ),
              ),
              Tab(
                icon: Text(
                  "Chat",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Tab(
                icon: Text(
                  "Status",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Tab(
                icon: Text(
                  "Calls",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Community_element(),
            chatelement(),
            Statuselement(),
            calls_element(),
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            }
            query = '';
          },
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> Suggestions = [
      'brazil',
      'china',
      'india',
      'USA',
      'Russia',
    ];

    return ListView.builder(
      itemCount: Suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = Suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {},
        );
      },
    );
  }
}
