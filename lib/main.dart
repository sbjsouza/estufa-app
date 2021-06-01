import 'package:flutter/material.dart';

import 'widgets/navBar.dart';

import 'views/home.dart';
import 'views/projects.dart';
import 'views/members.dart';
import 'views/competitions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AppNavigation(),
    );
  }
}

class AppNavigation extends StatefulWidget {
  final pageIndex = 0;
  @override
  _AppNavigationState createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int pageIndex = 0;
  void initState() {
    pageIndex = widget.pageIndex;
    super.initState();
  }

  void changePageIndex(int nextPageIndex) {
    setState(() {
      pageIndex = nextPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: [
          Home(),
          ProjectsPage(),
          MembersScreen(),
          CompetitionsScreen(),
        ],
      ),
      bottomNavigationBar: NavBar(changePageIndex: changePageIndex),
    );
  }
}
