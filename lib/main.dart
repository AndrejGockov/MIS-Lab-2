import 'package:flutter/material.dart';

import 'package:mis_lab_2/screens/home.dart';
import 'package:mis_lab_2/screens/category_screen.dart';
import 'package:mis_lab_2/screens/meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0x8DAB7F),
          dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const HomePage(name: "Food App"),
        "/category" : (context) => const CategoryPage(),
        "/meal" : (context) => const MealPage(),
      },
    );
  }
}