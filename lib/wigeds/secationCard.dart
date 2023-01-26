import 'package:flutter/material.dart';
import 'package:restaurants/pages/foodPageCategory.dart';
import 'package:restaurants/utilites/resipModel.dart';

class secationCard extends StatelessWidget {
  final resipModel food;
  const secationCard(
    this.food, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => foodPageCategory(food)));
        },
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                food.icon,
                color: Colors.indigo,
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                food.catogary,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
