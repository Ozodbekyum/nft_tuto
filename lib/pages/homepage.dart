import 'package:flutter/material.dart';
import 'package:nft_tuto/components/my_bottombar.dart';
import 'package:nft_tuto/tabs/top_tab.dart';
import 'package:nft_tuto/theme/glass.dart';

import '../components/my_appbar.dart';
import '../components/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _search() {}
  List tapOptions = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];
  int _current = 0;
  void _handle(int? index) {
    setState(() {
      _current = index! ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tapOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _current,
            onTap: _handle,
          ),
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'FOR YOU :)',
              onTap: _search,
            ),SizedBox(height: 30,),
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tapOptions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
