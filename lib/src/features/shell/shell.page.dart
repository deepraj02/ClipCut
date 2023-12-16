import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../styles/colors.dart';
import '../../config/global_keys.config.dart';

class ShellPage extends StatelessWidget {
  static const String route = '/main';
  final Widget child;
  const ShellPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ClipCutColors.accentColor,
        surfaceTintColor: ClipCutColors.primaryColor,
        title: const Text('ClipCut'),
        leading: IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                if (Platform.isAndroid) {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                }
                exit(0);
              }
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      key: GlobalKeysConfig.mainScaffold,
      body: Stack(
        children: [
          Center(
            child: child,
          ),
        ],
      ),
    );
  }
}
