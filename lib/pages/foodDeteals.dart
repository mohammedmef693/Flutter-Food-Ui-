import 'package:flutter/material.dart';
import 'package:restaurants/utilites/ApiData.dart';
import 'package:restaurants/utilites/resipModel.dart';
import 'package:restaurants/wigeds/MyTitel.dart';

class foddDeteals extends StatefulWidget {
  final resipModel food;
  foddDeteals(this.food, {Key? key}) : super(key: key);

  @override
  State<foddDeteals> createState() => _foddDetealsState();
}

class _foddDetealsState extends State<foddDeteals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        title: Center(child: MyTitel(titel: "food populer", fontsize: 20)),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(widget.food.imageurl),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.food.titel,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Text(
                            widget.food.price,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
