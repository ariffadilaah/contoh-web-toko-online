import 'package:flutter/material.dart';

class  ProductDetail extends StatelessWidget {
  final Map product;

  ProductDetail({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Column(
        children : [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0)),
                  padding: EdgeInsets.all(5),
                  height: 180,
                  width: 180,
            child: Image.network(product['image_url'])
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product['price'],
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.edit),
                    Icon(Icons.delete),
                  ],
                )
              ],
            ),
          ),
          Text(product['description'])
        ],
      ),
    );
  }
}