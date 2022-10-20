import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final image;
  final title;
  final price;

  const ProductTile({this.image, this.price, this.title});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(title),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              color: Theme.of(context).accentColor,
              Icons.shopping_cart_checkout_outlined,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        child: Image.network(image),
      ),
    );
  }
}
