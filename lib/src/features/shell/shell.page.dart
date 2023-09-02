import 'package:flutter/material.dart';

import '../../config/global_keys.config.dart';

class ShellPage extends StatelessWidget {
  static const String route = '/main';
  final Widget child;
  const ShellPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            // the appearance of each tab is defined with a [NavigationDestination] widget
            NavigationDestination(label: 'Section A', icon: Icon(Icons.home)),
            NavigationDestination(
                label: 'Section B', icon: Icon(Icons.settings)),
          ],
          onDestinationSelected: (index) {/* TODO: move to the tab at index */},
        ),
        key: GlobalKeysConfig.mainScaffold,
        backgroundColor: Colors.blueAccent[100],
        body: Stack(
          children: [
            Center(child: child),
            // const Align(
            //   alignment: Alignment.bottomLeft,
            //   //child: NavWidget(),
            // ),
          ],
        ));
  }
}
