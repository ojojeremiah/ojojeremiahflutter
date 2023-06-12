import 'package:flutter/material.dart';
import 'package:fly/Search.dart';
import 'package:fly/main.dart';
import 'package:fly/private.dart';
void main (){
  runApp(const MaterialApp(
    home: Booking(),
    debugShowCheckedModeBanner: false,
  ));
}

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  final List<String>categories = ['Economy', 'Premium Economy', 'Business', 'First class'];
   var dropdownvalue ="Economy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text("Booking"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 10, left: 60),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                    child: TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const private()));
                    }, child: Text("Private",style: TextStyle(
                        color: Colors.white
                    ),
                    ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Icon(Icons.flight_takeoff, color: Colors.blue,),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top:20),
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'from...',
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border: InputBorder.none,
                      ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 300),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.swap_vert, color: Colors.blue,)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Icon(Icons.flight_land, color: Colors.blue,),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 10,),
                  width: 350,
                  height: 70,
                  child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'To...',
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border:InputBorder.none
                      )
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 60),
              height: 400,
              width: 300,
              child:Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.blue),
                            child: TextButton(onPressed: (){}, child: Text('Round trip', style: TextStyle(color: Colors.white),)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.blue),
                            child: TextButton(onPressed: (){}, child: Text('Oneway', style: TextStyle(color: Colors.white),)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.blue),
                            child: TextButton(onPressed: (){}, child: Text('Multi city', style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only( top: 30, left: 10),
                          width: 130,
                          height: 60,
                          child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Departure-Date',
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintStyle: TextStyle(color: Colors.grey[600],
                                  fontSize: 12
                                ),
                                border: OutlineInputBorder(borderSide: BorderSide(
                                    style: BorderStyle.none
                                ),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only( top: 30),
                          width: 130,
                          height: 60,
                          child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Arrival-Date',
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintStyle: TextStyle(color: Colors.grey[600],
                                    fontSize: 12
                                ),
                                border: OutlineInputBorder(borderSide: BorderSide(
                                    style: BorderStyle.none
                                ),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child:  DropdownButton(
                        dropdownColor: Colors.grey[300],
                        icon: Icon(Icons.keyboard_arrow_down),
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500],
                        ),
                        value: dropdownvalue,
                        onChanged: (newValue){
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        items: categories.map((valueItem){
                          return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem));
                        }).toList(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only( top: 10),
                      width: 280,
                      height: 70,
                      child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Passengers',
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintStyle: TextStyle(color: Colors.grey,
                                fontSize: 12
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(
                                style: BorderStyle.none
                            ),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                          )
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                      child: TextButton(onPressed: (){}, child: Text("Book",style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
