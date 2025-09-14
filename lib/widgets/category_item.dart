import 'package:flutter/material.dart';
import 'package:mealapp/model/category.dart';

import '../styles.dart';
class CategoryItem extends StatelessWidget {
CategoryItem({super.key, required this.category, });
final Category category;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: (){
          Navigator.pushNamed(context, "mealScreen",arguments: {
            "name":category.name,
            "id" : category.id,
          });
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity ,
            height: 200,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              color: Colors.black54,
              child: Text(
              category.name,
                  style: AppStyles.textStyle30
              ),
            ),
            decoration: BoxDecoration(


              image: DecorationImage(
                  fit:BoxFit.fill,
                  image:  AssetImage(category.image)),


            ),

          ),
        ),
      ),
    );

  }
}
