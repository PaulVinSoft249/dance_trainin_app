import 'package:flutter/material.dart';

class VideoPlayerPage extends StatefulWidget {
  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: screenSize.height,
          width: screenSize.width,
          child: Stack(
            children: [
              appbar(context),
              rightIconsButtons(context),
              playButton(context),
              caption(context),
            ],
          ),
        ),
      ),
    );
  }

  appbar(context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text('Video Title',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  rightIconsButtons(context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              iconWithName('favorite', Icons.favorite, () {}),
              SizedBox(height: 5),
              iconWithName('favorite', Icons.add_comment, () {}),
              SizedBox(height: 5),
              iconWithName('favorite', Icons.share, () {}),
              SizedBox(height: 5),
            ],
          ),
        ));
  }

  iconWithName(String iconName, IconData icon, Function onTap) {
    return Column(
      children: <Widget>[
        IconButton(
          iconSize: 30,
          icon: Icon(icon, color: Colors.white),
          onPressed: onTap,
        ),
        Text(iconName,
            style: TextStyle(
                color: Colors.white,
                // fontSize: 25,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  playButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () {
          setState(() {
            isClick = !isClick;
          });
        },
        iconSize: 130,
        icon: Icon(
          isClick ? Icons.play_arrow : Icons.pause,
          color: Colors.white.withOpacity(.5),
        ),
      ),
    );
  }

  caption(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100, left: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hiphop dance\n',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: '#the revelation dance crew',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
