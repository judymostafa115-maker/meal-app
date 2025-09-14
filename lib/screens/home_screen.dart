import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/widgets/category_item.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Meal App"),
        centerTitle: true,
      ),

        body:ListView.builder(itemBuilder: (context,index){
          return CategoryItem(category:categories[index]);
        },
        itemCount: categories.length,
          shrinkWrap: true,
        )
    );
  }
}
