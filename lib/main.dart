import 'package:flutter/material.dart';
import 'package:fly/Booking.dart';
import 'package:fly/Explore.dart';
import 'package:fly/NavBar.dart';
import 'package:fly/Search.dart';
import 'Places.dart';
import 'Splashscreen.dart';

void main (){
  runApp(const MaterialApp(
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  Widget exploretemplate(exploring) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 430,
        width: 500,
        child:
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                    ),
                    child: Image.asset(exploring.pictures,fit: BoxFit.fitWidth, width: 450, height: 230,)
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Text(exploring.country, style: TextStyle(fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(exploring.location, style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(exploring.about, style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ),),
                ),
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 300,
                        margin: EdgeInsets.only(left: 30, top: 15),
                        child: Card(
                          color: Colors.blue,
                          child: TextButton(onPressed: () {
                            var index;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>  Explore(places: exploring[index],
                                )
                                )
                            );
                          },
                              child: Text('Explore', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.blue
                              ),)),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    )
                  ],
                ),
              ],
            )
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child:Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50),
              child:  IconButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MyApp()));
              }, icon: Icon(Icons.home_filled, size: 30,)),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> const Booking()));
              }, icon: Icon(Icons.flight, size: 30)),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: IconButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const Search()));
              }, icon: Icon(Icons.search, size: 30)),
            ),
          ],
        ) ,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title:Container(
          margin: EdgeInsets.only(left: 5),
            child:  IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>  NavBar()));
            }, icon: const Icon(Icons.menu, color: Colors.white)),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 115, top: 10),
            child:  Text('fly', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.normal),),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child:  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.white,)),
          )
        ],
        elevation: 2,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text('Explore', style:
                TextStyle(color: Colors.blue, fontSize: 20),),
              ),
              Column(
                children: explore.map((exploring) => exploretemplate(exploring)).toList(),
              ),
            ]
        ),
      )
    ) ;
  }
}

