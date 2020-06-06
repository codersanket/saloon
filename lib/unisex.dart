import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:saloonowner/bottom.dart';
import 'package:saloonowner/saloonProfile.dart';
import 'package:saloonowner/value.dart';

class unisex extends StatefulWidget {
  @override
  _unisexState createState() => _unisexState();
}

class _unisexState extends State<unisex> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Step 3 of 3",
                style: Theme.of(context).textTheme.headline4,
              ),
              Divider(
                thickness: 2,
              color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/unisex icon.png'),
                      radius: 30,
                    ),
                    radius: 32,
                    backgroundColor: Colors.grey,
                  ),
                  Text("Unisex All Services",style: Theme.of(context).textTheme.headline4,),


                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          width: 40,
                          child: Image.asset("images/man-getting-haircut_1f487-200d-2642-fe0f.png")),

                      Text("Men",style:Theme.of(context).textTheme.headline5,),

                    ],
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Service A",style: Theme.of(context).textTheme.headline5,),
                  Container(
                    height: 50,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Price",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: blue,
                                width: 2
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),
                TimePickerSpinner(
                  is24HourMode: false,
                  spacing: 2,
                  itemHeight: 18,
                  normalTextStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey

                  ),
                  highlightedTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    fontSize: 18,
                  ),
                  isForce2Digits: true,
                  onTimeChange: (time) {
                    setState(() {
                      _dateTime = time;
                    });
                  },

                )

                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Service B",style: Theme.of(context).textTheme.headline5,),
                  Container(
                    height: 50,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Price",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: blue,
                                width: 2
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),
                  TimePickerSpinner(
                    is24HourMode: false,
                    spacing: 2,
                    itemHeight: 18,
                    normalTextStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey

                    ),
                    highlightedTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      fontSize: 18,
                    ),
                    isForce2Digits: true,
                    onTimeChange: (time) {
                      setState(() {
                        _dateTime = time;
                      });
                    },

                  )

                ],
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        width: 40,
                        child: Image.asset("images/woman-getting-haircut_1f487-200d-2640-fe0f.png")),

                    Text("Women",style:Theme.of(context).textTheme.headline5,),


                  ],
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Service A",style: Theme.of(context).textTheme.headline5,),
                  Container(
                    height: 50,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Price",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: blue,
                                width: 2
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),
                  TimePickerSpinner(
                    is24HourMode: false,
                    spacing: 2,
                    itemHeight: 18,
                    normalTextStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey

                    ),
                    highlightedTextStyle: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      fontSize: 18,
                    ),
                    isForce2Digits: true,
                    onTimeChange: (time) {
                      setState(() {
                        _dateTime = time;
                      });
                    },

                  )

                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Service B",style: Theme.of(context).textTheme.headline5,),
                  Container(
                    height: 50,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Price",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: blue,
                                width: 2
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),
                  TimePickerSpinner(
                    is24HourMode: false,
                    spacing: 2,
                    itemHeight: 18,
                    normalTextStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey

                    ),
                    highlightedTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      fontSize: 18,

                    ),
                    isForce2Digits: true,
                    onTimeChange: (time) {
                      setState(() {
                        _dateTime = time;
                      });
                    },

                  )

                ],
              ),
              SizedBox(
                height: 150,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomNavigation())),child: Text("Done",style: Theme.of(context).textTheme.headline2,),
              color: blue,

              )
            ],
          ),
        ),
      ),
    );
  }
}
