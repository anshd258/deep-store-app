import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/overview_items.dart';

class Overvie extends StatelessWidget {
  final List<products> loae = [
    products(
        id: "1",
        discription: "base protuct",
        isfavorite: false,
        price: 22.5,
        title: "ball",
        imageUrl:
            "https://assets.newatlas.com/dims4/default/4b098bf/2147483647/strip/true/crop/640x427+0+27/resize/840x560!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Farchive%2Fadidas_smart_ball.jpg"),
    products(
        id: "1",
        discription: "base protuct",
        isfavorite: false,
        price: 22.5,
        title: "ball",
        imageUrl:
            "https://assets.newatlas.com/dims4/default/4b098bf/2147483647/strip/true/crop/640x427+0+27/resize/840x560!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Farchive%2Fadidas_smart_ball.jpg"),
    products(
        id: "1",
        discription: "base protuct",
        isfavorite: false,
        price: 22.5,
        title: "ball",
        imageUrl:
            "https://assets.newatlas.com/dims4/default/4b098bf/2147483647/strip/true/crop/640x427+0+27/resize/840x560!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Farchive%2Fadidas_smart_ball.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("items"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: loae.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: ((context, i) => ProductTile(
              image: loae[i].imageUrl,
              price: loae[i].price,
              title: loae[i].title,
            )),
      ),
    );
  }
}
