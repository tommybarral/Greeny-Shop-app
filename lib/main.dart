import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greeny_shop_app/screens/welcome_screen_android.dart';
import 'package:greeny_shop_app/screens/welcome_screen_apple.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final setPlatform = Theme.of(context).platform;
    final androidPlatform = (setPlatform == TargetPlatform.android);
    return (androidPlatform)
        ? const MaterialApp(debugShowCheckedModeBanner: false, home: WelcomeScreenAndroid())
        : const CupertinoApp(debugShowCheckedModeBanner: false, home: WelcomeScreenApple());
  }
}