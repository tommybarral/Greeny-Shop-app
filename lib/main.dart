import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greeny_shop_app/models/plant_data.dart';
import 'package:greeny_shop_app/screens/home_screen_android.dart';
import 'package:greeny_shop_app/screens/home_screen_apple.dart';
import 'package:greeny_shop_app/screens/welcome_screen_android.dart';
import 'package:greeny_shop_app/screens/welcome_screen_apple.dart';
import 'package:provider/provider.dart';

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
        ? ChangeNotifierProvider(
          create: (context) => PlantData(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const WelcomeScreenAndroid(),
            routes: {
              WelcomeScreenAndroid.routeName: (context) => const WelcomeScreenAndroid(),
              HomeScreenAndroid.routeName: (context) => const HomeScreenAndroid(),
            },
          ),
        )
        : ChangeNotifierProvider(
          create: (context) => PlantData(),
          child: CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: const WelcomeScreenApple(),
            routes: {
              WelcomeScreenApple.routeName: (context) => const WelcomeScreenApple(),
              HomeScreenApple.routeName: (context) => const HomeScreenApple(),
            }
          ),
        );
  }
}