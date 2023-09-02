import '../../../../config/global_keys.config.dart';
import '../../../home/presentation/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String route = '/splash';
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(GlobalKeysConfig.main.currentContext!).go(HomePage.route);
    });
    return const Scaffold(
        backgroundColor: Colors.red,
        body: Center(
            child: Row(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: 60,
              height: 60,
              child: Stack(
                children: [
                  Center(
                      child: Icon(Icons.account_circle,
                          color: Colors.white, size: 50)),
                  Center(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(width: 20),
          Text('Hello There', style: TextStyle(color: Colors.white))
        ])));
  }
}
