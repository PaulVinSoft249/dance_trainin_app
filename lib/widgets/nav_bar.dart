import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function onTap;

  const NavBar({Key key, this.pageIndex, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: pageIndex == 2 || pageIndex == 3 || pageIndex == 4
          ? Colors.white
          : Colors.transparent,
      unselectedItemColor: pageIndex == 2 || pageIndex == 3 || pageIndex == 4
          ? Colors.grey[800]
          : Colors.grey[400],
      selectedItemColor: Colors.red,
      currentIndex: pageIndex,
      onTap: onTap,
      iconSize: 20,
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
          title: Text('Search\nvideos'),
          icon: Icon(
            Icons.search,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Favorites'),
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
