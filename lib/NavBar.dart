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
      width: 200,
      height: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child:Container(
                margin: EdgeInsets.only(right: 400),
                child:  IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const MyApp()));
                }, icon: Icon(Icons.close, size: 30)),
              )
            ),
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
              title: Text('Express'),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
