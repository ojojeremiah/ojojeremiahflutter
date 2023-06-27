import 'package:flutter/material.dart';
import 'package:fly/main.dart';

void main (){
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
          Container(
            margin: EdgeInsets.only(top: 100, right: 350),
            child:   IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.close))
          ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child:  Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Profile'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('history'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.interests),
                    title: Text('fly-Express'),
                    onTap: (){},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
