import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/routes/route_config.dart';
import 'styles/colors.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ClipCut(),
    ),
  );
}

class ClipCut extends StatelessWidget {
  const ClipCut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: ClipCutColors.backgroundColor,
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}
