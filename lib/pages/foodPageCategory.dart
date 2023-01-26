import 'package:flutter/material.dart';
import 'package:restaurants/pages/homepage.dart';
import 'package:restaurants/utilites/ApiData.dart';
import 'package:restaurants/utilites/resipModel.dart';
import 'package:restaurants/wigeds/MyTitel.dart';
import 'package:restaurants/wigeds/topOfferCard.dart';

class foodPageCategory extends StatefulWidget {
  final resipModel food;
  foodPageCategory(this.food);

  @override
  State<foodPageCategory> createState() => _foodPageCategoryState();
}

class _foodPageCategoryState extends State<foodPageCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(widget.food.catogary),
            MyTitel(titel: widget.food.catogary, fontsize: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  itemCount: food.length,
                  itemBuilder: (context, index) {
                  
                    return topOfferCard(food[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
