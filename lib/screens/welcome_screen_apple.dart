import 'package:flutter/cupertino.dart';

class WelcomeScreenApple extends StatelessWidget {
  const WelcomeScreenApple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Apple device'),
      ),
      child: Center(
        child: Text('Apple Device'),
      ),
    );
  }
}
