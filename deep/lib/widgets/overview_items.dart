import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final image;
  final title;
  final price;

  const ProductTile({this.image, this.price, this.title});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black45,
        title: Text(title),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_checkout_outlined,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
        ),
      ),
      child: Image.network(image),
    );
  }
}
