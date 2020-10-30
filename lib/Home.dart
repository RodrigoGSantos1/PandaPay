import 'package:flutter/material.dart';

import 'Carteira.dart';

class BottomBar extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim4.dart";
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page;

  @override
  void initState() {
    _page = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(right: 50, left: 30),
          child: Image.asset("images/logo.png"),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
            icon: Icon(Icons.menu), color: Colors.black, onPressed: () {}),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: getPage(_page),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _page,
          onChange: (index) {
            setState(() {
              _page = index;
            });
          }),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return Carteira();
      case 1:
        return Center(
            child: Container(
          child: Text(
            "Em desenvolvimento",
            style: TextStyle(fontSize: 20),
          ),
        ));
      case 2:
        return Center(
            child: Container(
          child: Text(
            "Em desenvolvimento",
            style: TextStyle(fontSize: 20),
          ),
        ));
      case 3:
        return Center(
            child: Container(
          child: Text(
            "Em desenvolvimento",
            style: TextStyle(fontSize: 20),
          ),
        ));
      case 4:
        return Center(
            child: Container(
          child: Text(
            "Em desenvolvimento",
            style: TextStyle(fontSize: 20),
          ),
        ));
    }
  }
}

class AnimatedBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onChange;
  const AnimatedBottomNav({Key key, this.currentIndex, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => onChange(0),
              child: BottomNavItem(
                icon: Icons.account_balance_wallet,
                title: "Carteira",
                isActive: currentIndex == 0,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(1),
              child: BottomNavItem(
                icon: Icons.attach_money,
                title: "Pagar",
                isActive: currentIndex == 1,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(2),
              child: BottomNavItem(
                icon: Icons.compare_arrows,
                title: "Trasferir",
                isActive: currentIndex == 2,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(3),
              child: BottomNavItem(
                icon: Icons.linear_scale,
                title: "Blockchain",
                isActive: currentIndex == 3,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(4),
              child: BottomNavItem(
                icon: Icons.settings,
                title: "Ajustes",
                isActive: currentIndex == 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;
  final String title;
  const BottomNavItem(
      {Key key,
      this.isActive = false,
      this.icon,
      this.activeColor,
      this.inactiveColor,
      this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 200),
      child: isActive
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: inactiveColor ?? Colors.black,
            ),
    );
  }
}
