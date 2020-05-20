import 'package:dance_trainin_app/pages/video_player_page.dart';
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
              width: 0.1,
            ),
          ),
          child: Stack(
            children: <Widget>[
              profileIcon(context),
              playButton(context),
              caption(context),
            ],
          ),
        );
      },
    );
  }

  playButton(context) {
    return Align(
      alignment: Alignment.center,
      child: IconButton(
        // splashColor: Colors.transparent,
        iconSize: 150,
        color: Colors.white.withOpacity(.5),
        icon: Icon(
          Icons.play_arrow,
        ),
        onPressed: () {
          print('play icon tapped');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => VideoPlayerPage()));
        },
      ),
    );
  }

  caption(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hiphop dance\n',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: '#the revelation dance crew',
                style: TextStyle(fontSize: 14, color: Colors.grey[400]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

profileIcon(context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Align(
      alignment: Alignment.topRight,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.person, color: Colors.black),
            radius: 18,
            // backgroundColor: Colors.white,
          ),
          SizedBox(height: 10),
          Text('Neerd Paul'.toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.white60)),
        ],
      ),
    ),
  );
}
