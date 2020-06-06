import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:saloonowner/saloonProfile.dart';
import 'package:saloonowner/value.dart';

import 'registration2.dart';

class me extends StatefulWidget {
  @override
  _meState createState() => _meState();
}

class _meState extends State<me> {
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
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
	    child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.07,
              color: blue,
              child:Center(
                child: Text("Good morning! User name\nYou are special for us",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),textAlign: TextAlign.center,),
              ) ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundImage: AssetImage("images/men icon.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("User Name(owner)",textAlign: TextAlign.start,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                        ),),
                        Icon(Icons.edit),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone no.",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18

                        ),textAlign: TextAlign.start,),
                        Icon(Icons.edit),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Salon Name",textAlign: TextAlign.start,style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18
                        ),),
                        Icon(Icons.edit),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.04,
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>saloonProfile()));
            },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              child: Text("Salon Profile",style: Theme.of(context).textTheme.headline2,),color:blue,),
            Divider(
              thickness:2,
              color: Colors.grey,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                )
              ),
              child: Column(
                children: [
                  Text("Corona!!",style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),


             Text("It's Time to be real hero for our india",style: TextStyle(
              color: green,
              fontSize: 18,
              fontWeight: FontWeight.normal
            ),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                children: [
                  Text("Share This App With Your",style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 25,
                  ),),

                  Container(
                    padding: EdgeInsets.all(20),
                  width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(10),

                    ),
                   child:RaisedButton(onPressed: (){},
                     padding: EdgeInsets.symmetric(vertical: 20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                     color: blue,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Share Now",style: Theme.of(context).textTheme.headline2,),
                         Icon(
                           Icons.arrow_forward,
                           color: Colors.white,
                           size: 30,
                         )
                       ],
                     ),
                   )
                    ,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
