import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function onTap;

  const NavBar({Key key, this.pageIndex, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: Colors.red,
      currentIndex: pageIndex,
      onTap: onTap,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
          title: Text('Explore'),
          icon: Icon(Icons.explore),
        ),
        BottomNavigationBarItem(
          title: Text('Training'),
          icon: Icon(Icons.video_label),
        ),
        BottomNavigationBarItem(
          title: Text('Discover'),
          icon: Icon(
            Icons.search,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Favorited(0)'),
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          title: Text('Me'),
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
