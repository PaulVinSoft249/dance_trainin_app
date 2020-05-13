import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (ctx, i) {
          return Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  child: IconButton(
                    iconSize: 150,
                    color: Colors.white.withOpacity(.5),
                    icon: Icon(
                      Icons.play_arrow,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        });
  }
}
