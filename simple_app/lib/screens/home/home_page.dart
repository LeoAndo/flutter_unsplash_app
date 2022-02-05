import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_app/router/app_router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: 0,
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          title: Text(tabsRouter.topRoute.name),
          leading: const AutoBackButton(),
        );
      },
      routes: const [
        PhotoTab(),
        TodoTab(),
        SettingsTab(),
      ],
      bottomNavigationBuilder: buildBottomNav,
    );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;
    return hideBottomNav
        ? const SizedBox.shrink()
        : BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: 'Photo',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add),
                label: 'Todo',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          );
  }
}
