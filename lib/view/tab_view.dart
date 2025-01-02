import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ms_dhoni/modal/tab_list.dart';

class TabView extends StatelessWidget {
  final String title;
  const TabView({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ofNavs.length,
      child: Builder(builder: (context) {
        DefaultTabController.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color(0xFF880E4F),
            actions: const [
              Icon(Icons.favorite),
              Gap(16),
              Icon(Icons.more_vert),
              Gap(16),
            ],
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            bottom: TabBar(
              tabs: [
                for (int i = 0; i < ofNavs.length; i++) ...{
                  Tab(
                    icon: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(ofNavs[i].image),
                    ),
                    text: ofNavs[i].name,
                  ),
                }
              ],
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: [
              for (int i = 0; i < ofNavs.length; i++) ...{
                ofNavs[i].nav,
              }
            ],
          ),
        );
      }),
    );
  }
}
