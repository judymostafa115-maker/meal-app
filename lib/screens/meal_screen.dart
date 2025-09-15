import 'package:flutter/material.dart';
import 'package:mealapp/widgets/meals_item.dart';
import '../data.dart';

import '../model/meal.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key, });


  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;
    String id =data["id"];
    List<Meal> mealsFilter =meals.where((value){
      return value.categoryNumber== data["id"];
    }).toList();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(data["name"]),
          centerTitle: true,
        ),


        body: MealsItem()

    );
  }//j
}