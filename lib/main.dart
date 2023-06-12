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
  List<Places> explore =[
    Places(pictures:Image.asset('assets/korea.jpg',fit: BoxFit.fitWidth, width: 450, height: 250,), country:'South Korea', location:'Gyeongbokgung', about:'Gyeongbokgung also known as Gyeongbokgung Palace was the main royal palace built in 1395, it is located in northern Seoul, South Korea.It is the largest of the five built by the Joseon dynasty.'),
    Places(pictures:Image.asset('assets/Ibiza.jpg',fit: BoxFit.fitWidth, width: 450, height: 230,), country: 'Spain', location: 'Ibiza', about: "Ibiza is well known for its nightlife and ellectronic dance music club in the summer, which attract large numbers of toursit. The island's government and Spainish Toursit office have worked toward promoting more family-oriented tourism."),
    Places(pictures:Image.asset('assets/Jamaica.jpg', fit: BoxFit.fitWidth, width: 450, height: 240), country: 'Jamaica', location: "Dunn's River Falls and Park", about: "960 feet of fun! Dunn's River falls is an astounding flowing falls that extends across more than 183 meters or 960 feet and is one of the most well-loved travel location."),
    Places(pictures:Image.asset('assets/morocco.jpg', fit: BoxFit.fitWidth, width: 450, height: 230,), country: 'Morocco', location: 'Ksar of Ait-Ben-Haddou', about: "The site of the ksar has been fortified since the 11th century and it holds history of the Moroccan eathern clay.Toaday th ksar itself is only sparsely inhabited by several families.The depoluation over time is a result of the valley's loss of strategic importance in the 20th century."),
  ];
  Widget exploretemplate(exploring) {
    return Container(
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
                  child: exploring.pictures
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>  Explore()));
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
                  MaterialPageRoute(builder: (context)=> const NavBar()));
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
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 20),
              child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text('Explore', style:
                      TextStyle(color: Colors.blue, fontSize: 20),),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: explore.map((exploring) => exploretemplate(exploring)).toList(),
                      ),
                    )
                  ]
              )
          )
        ],
      )
    ) ;
  }
}

