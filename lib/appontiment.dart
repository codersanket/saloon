import 'dart:async';

import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';



import 'value.dart';


class appontiment extends StatefulWidget {
  @override
  _appontimentState createState() => _appontimentState();
}

class _appontimentState extends State<appontiment> {
  List months = ['jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec'];
  DateTime _dateTime = DateTime.now();
  var time=DateTimeFormat.format(DateTime.now(),format: 'H:i');
  var tomorrow=DateTime.now().add(Duration(days: 1));

  Timer _timer;
  int _start = 120;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                          fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text("time",style: TextStyle(
                            fontSize: 10
                        ),),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text(
                  "Customer name has send  you reaquest for \nHaircut+shaving = 350₹",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),

                      width: 60,
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("Today",style: TextStyle(
                              fontSize: 13,color: Colors.white
                          ),),
                          Text(_dateTime.day.toString(),style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                          ),),
                          Text(months[_dateTime.month-1],style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.5),
                      ),

                      width: 60,
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("Tomorrow",style: TextStyle(
                              fontSize: 12,color: Colors.white
                          ),),
                          Text(tomorrow.day.toString(),style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                          ),),
                          Text(months[tomorrow.month-1],style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          ),),

                        ],
                      ),
                    ),
                  Container(
                    child:Row(
                      children: [
                        Text(time),
                      ],
                    ),
                  )

                  ],
                ),

               GestureDetector(
                 onTap: startTimer,
                 child: Container(
                   height: MediaQuery.of(context).size.height*0.08,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: green,
                     borderRadius: BorderRadius.circular(10),

                   ),
                   child: Center(child: Text("Confirm",style: Theme.of(context).textTheme.headline1,)),
                 ),
               ),
                FlatButton(onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)) ),
              SizedBox(
              height: MediaQuery.of(context).size.height*0.07,
              ),

              Text("$_start Sec",style: TextStyle(
                fontSize: 20,
                color: Colors.black,


              ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
