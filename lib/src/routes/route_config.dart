import '../config/global_keys.config.dart';
import '../features/shell/shell.page.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/pages/home.page.dart';
import '../features/splash/presentation/pages/splash.page.dart';

class AppRoutes {
  static final router = GoRouter(
    debugLogDiagnostics: true,
      initialLocation: SplashPage.route,
      navigatorKey: GlobalKeysConfig.main,
      routes: [
        GoRoute(
          parentNavigatorKey: GlobalKeysConfig.main,
          path: SplashPage.route,
          builder: (context, state) => const SplashPage(),
        ),
        ShellRoute(
          navigatorKey: GlobalKeysConfig.navBar,
          builder: (context, state, child) {
            return ShellPage(child: child);
          },
          routes: [
            GoRoute(
                parentNavigatorKey: GlobalKeysConfig.navBar,
                path: HomePage.route,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: HomePage());
                }),
          ],
        ),
      ]);
}
