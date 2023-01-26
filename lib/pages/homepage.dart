import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:restaurants/utilites/ApiData.dart';
import 'package:restaurants/utilites/resipModel.dart';
import 'package:restaurants/wigeds/MyTitel.dart';
import 'package:restaurants/wigeds/populerFoodCard.dart';
import 'package:restaurants/wigeds/searchBar.dart';
import 'package:restaurants/wigeds/secationCard.dart';
import 'package:restaurants/wigeds/topOfferCard.dart';

import 'foodPageCategory.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

//List icon = [
// Icons.ac_unit_sharp,
// Icons.access_alarm_outlined,
// Icons.ac_unit_outlined,
//Icons.access_time_filled_outlined,
// Icons.accessibility_sharp
//];
//List titel = ["inday", "asion", "amircan", "pizza", "soshey"];

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTitel(titel: "Explore", fontsize: 15),
                searchBar(),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: food.length,
                      itemBuilder: (context, index) {
                        return secationCard(food[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MyTitel(titel: "populer food", fontsize: 18),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: food.length,
                      itemBuilder: (context, index) {
                        return populerFoodCard(food[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MyTitel(titel: "Top offers", fontsize: 18),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: food.length,
                      itemBuilder: (context, index) {
                        return topOfferCard(food[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
