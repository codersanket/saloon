import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saloonowner/value.dart';

class saloonProfile extends StatefulWidget {
  @override
  _saloonProfileState createState() => _saloonProfileState();
}

class _saloonProfileState extends State<saloonProfile> {
  List images = [
    "images/5ee37bf1e3789f5222f6e567f14f7b04.jpg",
    "images/saloon1.jpg",
    "images/sallon3.jpg",
    "images/Hair_Salon_Stations.jpg"
  ];
  double rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Salon Profile",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
                items: images.map((i) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      i,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.3,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salon X",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "Men's",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Aggarwal farm near stone\nPark mansarovar, (Jaipur)",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                RatingBar(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    size: 8,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (value) {
                    setState(() {
                      rating = value;
                    });
                  },
                  itemSize: 20,
                ),
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("images/employee.png")),
                    Text(
                      "Employees",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "See all Services",
                      style: TextStyle(
                        color: blue,
                        fontSize: 15,
                      ),
                    ))
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: blue,
                      size: 40,
                    ),
                  ),
                ),
                Text(
                  "1.Employee's name",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Icon(
                  Icons.delete_forever,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
