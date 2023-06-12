import 'package:flutter/material.dart';
import 'Booking.dart';
import 'Places.dart';
import 'Search.dart';
import 'main.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Places> explore =[
    Places(pictures:Image.asset('assets/korea.jpg'), country:'South Korea', location:'Gyeongbokgung', about:'Gyeongbokgung also known as Gyeongbokgung Palace was the main royal palace built in 1395, it is located in northern Seoul, South Korea.It is the largest of the five built by the Joseon dynasty.', price: '700,000', planes: Image.asset('assets/3500 body.jpeg')),
  ];
  Widget visitTemplate(visit){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: visit.pictures,
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
            child: Text(visit.country, style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
            ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Text(visit.location, style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20
          ),),
        ),
        Container(
          width: 400,
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Text(visit.about, style: TextStyle(
            wordSpacing: 1,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Icon(Icons.attach_money,size: 20,),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(visit.price, style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),)
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: visit.planes,
                ),
              )
            ],
          ),
        ),
        Container(
            height: 40,
            width: 300,
            margin: EdgeInsets.only(left: 45, top: 35),
            child: Card(
              color: Colors.blue,
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const Booking()));
              }, child: Text('Book', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue
              ),)),
            )
        ),
      ],
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
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
            children: explore.map((visit) => visitTemplate(visit)).toList()
        ),
      )
    );
  }
}
