import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saloonowner/registration2.dart';
import 'package:saloonowner/value.dart';

class registartion extends StatefulWidget {
  @override
  _registartionState createState() => _registartionState();
}

class _registartionState extends State<registartion> {
  var isSelcted = [false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text("Step 1 of 3",style: Theme.of(context).textTheme.headline4,),
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: blue, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
	                margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
	                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Name",
                        style: Theme.of(context).textTheme.headline3,
                      ),
	                    SizedBox(
		                    height: 30,
	                    ),
	                    Text(
		                    "What is Your Designation?",
		                    style: Theme.of(context).textTheme.headline5,
	                    ),
                    ],
                  ),


                ),
                Center(
                  child: ToggleButtons(

                    fillColor: blue,
                    selectedColor: Colors.white,
                    children: <Widget>[
                      Container(
	                    margin:EdgeInsets.all(20),
                        child: Text(
                          "Owner",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      Container(
	                    margin:EdgeInsets.all(20),
                        child: Text(
                          "Employee",
                          style: Theme.of(context).textTheme.headline5,

                        ),
                      )
                    ],
                    isSelected: isSelcted,
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < isSelcted.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            isSelcted[buttonIndex] = true;
                          } else {
                            isSelcted[buttonIndex] = false;
                          }
                        }
                      });
                    },
                  ),
                ),
                materialButton2(
                  text2: "Next",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class materialButton2 extends StatelessWidget {
  final String text2;
  materialButton2({this.text2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * 0.12,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>register())),
        color: Color(0xff0084FF),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text2,
              style: Theme.of(context).textTheme.headline2,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
