import 'package:flutter/material.dart';
import 'package:restaurants/pages/foodDeteals.dart';
import 'package:restaurants/utilites/resipModel.dart';

class populerFoodCard extends StatelessWidget {
  final resipModel food;
  const populerFoodCard(
    this.food, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => foddDeteals(food)));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: NetworkImage(food.imageurl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                food.titel,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 3.0, bottom: 3.0),
                                child: Row(
                                  children: [
                                    Text("4.2",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.indigo,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.indigo,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.indigo,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.indigo,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "(+17)",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                food.price,
                                style: TextStyle(
                                    fontSize: 17,
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
        ),
      ),
    );
  }
}
