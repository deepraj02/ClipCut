import 'package:clipcut/src/config/global_keys.config.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/presentation/pages/splash.page.dart';

class AppRoutes {

  static final router = GoRouter(
    initialLocation: SplashPage.route,
    navigatorKey: GlobalKeysConfig.main,
    routes: [
      GoRoute(
        parentNavigatorKey: GlobalKeysConfig.main,
        path: SplashPage.route,
        builder: (context, state) => const SplashPage(),
      ),
    ]
  );
}
