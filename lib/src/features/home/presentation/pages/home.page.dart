import 'package:flutter/material.dart';

import '../../../../config/global_keys.config.dart';

class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton.filled(
        onPressed: () {
          debugPrint(GlobalKeysConfig.navBar.currentContext.toString());
        },
        icon: const Icon(Icons.upload_file_outlined),
      ),
    );
  }
}
