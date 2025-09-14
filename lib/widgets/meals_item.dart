import 'package:flutter/material.dart';

import '../data.dart';
import '../model/meal.dart';
import '../styles.dart';
class MealsItem extends StatelessWidget {
  const MealsItem({super.key, });





  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;
    String id =data["id"];
    List<Meal> mealsFilter =meals.where((value){
      return value.categoryNumber== data["id"];
    }).toList();

    return ListView.builder(
      itemCount: mealsFilter.length,
        itemBuilder: (context, index) {
          final meal = mealsFilter[index];
          return Container(
            width: double.infinity,
            height: 200,

            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
          color: Colors.teal,
              borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),


            ),
            ),
            child: Row(
              children: [

                Image.asset(
                  meal.imageUrl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),

                SizedBox(width: 15,),
                Expanded(
                  child: Text(meal.title,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                        ),),
                ),

                SizedBox(width:29),

                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18,
                ),
//hh



              ],
            ),
          );
        },
    );

  }
}

