import 'package:flutter/material.dart';

import 'Booking.dart';
import 'Search.dart';
import 'airplane.dart';
import 'main.dart';

void main (){
  runApp(const MaterialApp(
    home: private(),
    debugShowCheckedModeBanner: false,
  ));
}

class private extends StatefulWidget {
  const private({Key? key}) : super(key: key);


  @override
  State<private> createState() => _privateState();
}

class _privateState extends State<private> {
  List<Planes> aircraft = [
    Planes(pictures: Image.asset('assets/3500 body.jpeg', fit: BoxFit.fitWidth, width: 450, height: 250,), name: 'Bombardier Challenger-3500', distance: '3,400km-6,297km', speed: 'mach 0.80', amount: '13,000/hr', about: 'The bombardier challenger 3500 is no doubt one of the best aircraft in it range and also has a capacity of up to 10 passengers with one of the best and luxurious components on board.' ),
    Planes(pictures: Image.asset('assets/5500 global.jpeg', fit: BoxFit.fitWidth, width: 450, height: 250,), name:'Bombardier Challenger-5500', distance:'5,900km-10,927km', speed: 'mach 0.85', amount: '17,000/hr', about:'The bombardier challenger 5500 is no doubt one of the best aircraft in it range with a standard living space and also has a capacity of up to 16 passengers with one of the best and luxurious components on board.'),
    Planes(pictures: Image.asset('assets/6500 body.jpeg', fit: BoxFit.fitWidth, width: 450, height: 250,), name: 'Bombardier Challenger-6500', distance: '6,600km-12,223km', speed: 'mach.0.88', amount: '24,000/hr', about: 'The bombardier challenger 6500 is no doubt one of the best aircraft in it range and also has a capacity of up to 17 passengers and also a more comfortable standard living space with one of the best and luxurious components on board.'),
    Planes(pictures: Image.asset('assets/7500 body.jpeg', fit: BoxFit.fitWidth, width: 450, height: 250,), name: 'Bombardier Challenger-7500', distance: '7,700km-14,260km', speed: 'mach 0.90', amount: '29,000/hr', about: 'The bombardier challenger 7500 is no doubt  the best business aircraft in it range and also has a capacity of up to 19 and also four living spaces for more privacy and comfort passengers with one of the best and luxurious components on board.'),
  ];
  Widget privatetemplate(flying){
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 530,
      width: 500,
      child:
      Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:  flying.pictures,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(flying.name, style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text('Maximum - Range',style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(flying.distance,style: TextStyle( fontSize: 15,  color: Colors.grey[600])),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 100, top: 20),
                        child: Text('Speed',style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100, top: 10),
                        child: Text(flying.speed,style: TextStyle( fontSize: 15,  color: Colors.grey[600])),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text("Price: "),
                  ),
                  Container(
                    margin: EdgeInsets.only( top: 10),
                    child: Icon(Icons.attach_money, size: 15,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(flying.amount),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(flying.about, style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12
                ),),
              ),
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 300,
                      margin: EdgeInsets.only(left: 45, top: 25),
                      child: Card(
                        color: Colors.blue,
                        child: TextButton(onPressed: (){}, child: Text('fly', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.blue
                        ),)),
                      )
                  ),
                ],
              )
            ],
          )
      ),
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
        title: Text('Private'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: aircraft.map((flying) => privatetemplate(flying)).toList(),
     )
      )
    );
  }
}
