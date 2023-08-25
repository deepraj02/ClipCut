import 'package:flutter/material.dart';

import 'src/routes/route_config.dart';

void main() {
  runApp(const ClipCut());
}

class ClipCut extends StatelessWidget {
  const ClipCut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}
