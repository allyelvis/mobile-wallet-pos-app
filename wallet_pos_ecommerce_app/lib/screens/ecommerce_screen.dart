import 'package:flutter/material.dart';

class EcommerceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('eCommerce')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // List of products and checkout
            Text('eCommerce Functionality Coming Soon'),
            // Add eCommerce logic here
          ],
        ),
      ),
    );
  }
}
