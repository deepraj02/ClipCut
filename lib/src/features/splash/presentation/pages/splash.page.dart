import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String route = '/splash';
  @override
  Widget build(BuildContext context) {
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
          Text("Hello There", style: TextStyle(color: Colors.white))
        ])));
  }
}
