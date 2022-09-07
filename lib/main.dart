import 'package:flutter/material.dart';
import 'package:front_plant_app_flutter_ui/constants.dart';
import 'package:front_plant_app_flutter_ui/screens/components/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praticando Flutter Plant-App',
      theme: ThemeData(
        scaffoldBackgroundColor: nexBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: nexTextColor),
        primaryColor: nexPrimaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
