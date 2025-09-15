import 'package:flutter/material.dart';
import 'package:mealapp/screens/home_screen.dart';
import 'package:mealapp/screens/meal_screen.dart';

void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
       "mealScreen":(context)=>MealScreen(),
      },
      home: HomeScreen(),
    );
  }
}
///

