import 'package:dance_trainin_app/ui/pages/explore_page.dart';
import 'package:dance_trainin_app/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInToLinear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(),
        body: SafeArea(
          child: PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              ExplorePage(),
              Container(color: Colors.yellow),
              Container(color: Colors.green),
              Container(color: Colors.pink),
              Container(color: Colors.lightBlue),
              Container(color: Colors.amber),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(
          onTap: onTap,
          pageIndex: pageIndex,
        ));
  }
}
