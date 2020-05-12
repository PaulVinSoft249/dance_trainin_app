import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (ctx, i) {
          return Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: BoxDecoration(color: Colors.grey, border: Border.all()),
          );
        });
  }
}
