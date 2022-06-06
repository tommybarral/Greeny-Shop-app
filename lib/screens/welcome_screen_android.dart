import 'package:flutter/material.dart';

class WelcomeScreenAndroid extends StatelessWidget {
  const WelcomeScreenAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Device'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Android device'),
      ),
    );
  }
}
