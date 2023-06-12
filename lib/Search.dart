import 'package:flutter/material.dart';
import 'package:fly/main.dart';
import 'Booking.dart';
import 'Places.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searching = TextEditingController();
  List<Places> searchResults = [];
  void search(String query){
    setState(() {
      searchResults=explore.where((place)=> place.country.contains(query)).toList();
    });
  }
  List<Places> explore =[
    Places(pictures:Image.asset('assets/korea.jpg',fit: BoxFit.fitWidth, width: 450, height: 250,), country:'South Korea', location:'Gyeongbokgung', about:'Gyeongbokgung also known as Gyeongbokgung Palace was the main royal palace built in 1395, it is located in northern Seoul, South Korea.It is the largest of the five built by the Joseon dynasty.'),
    Places(pictures:Image.asset('assets/morocco.jpg', fit: BoxFit.fitWidth, width: 450, height: 230,), country: 'Morocco', location: 'Ksar of Ait-Ben-Haddou', about: "The site of the ksar has been fortified since the 11th century and it holds history of the Moroccan eathern clay.Toaday th ksar itself is only sparsely inhabited by several families.The depoluation over time is a result of the valley's loss of strategic importance in the 20th century."),
    Places(pictures:Image.asset('assets/Ibiza.jpg',fit: BoxFit.fitWidth, width: 450, height: 230,), country: 'Spain', location: 'Ibiza', about: "Ibiza is well known for its nightlife and ellectronic dance music club in the summer, which attract large numbers of toursit. The island's government and Spainish Toursit office have worked toward promoting more family-oriented tourism."),
    Places(pictures:Image.asset('assets/Jamaica.jpg', fit: BoxFit.fitWidth, width: 450, height: 240), country: 'Jamaica', location: "Dunn's River Falls and Park", about: "960 feet of fun! Dunn's River falls is an astounding flowing falls that extends across more than 183 meters or 960 feet and is one of the most well-loved travel location.")
  ];
  Widget exploretemplate(exploring){
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 430,
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
                decoration: BoxDecoration(borderRadius: BorderRadius.all(
                    Radius.circular(20)
                )
                ),
                child: exploring.pictures
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(exploring.country, style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(exploring.location,style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)),
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
                      height:40,
                      width: 300,
                      margin: EdgeInsets.only(left: 30, top: 15),
                      child: Card(
                        color: Colors.blue,
                        child: TextButton(onPressed: (){}, child: Text('Explore', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.blue
                        ),)),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
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
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only( top: 10),
              width: 410,
              height: 70,
              child: TextField(
                onChanged: search,
                controller: searching,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Places...',
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintStyle: TextStyle(color: Colors.grey[600],
                        fontSize: 15
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(
                        style: BorderStyle.none
                    ),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                  )
              ),
            ),
            Column(
              children:   explore.map((exploring) => exploretemplate(exploring)).toList(),
            ),
            Expanded(
                child:ListView.builder(
                  itemCount: searchResults.length,
                    itemBuilder: (context,index){
                    return ListTile(
                      title: Text(searchResults[index].country),
                      subtitle: Text(searchResults[index].location),
                    );
                    }
                )
            )
          ],
        )
      )
    );
  }
}
