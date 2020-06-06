import 'package:flutter/material.dart';
import 'package:saloonowner/unisex.dart';

import 'value.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}
enum gender {unisex,male,female}
class _registerState extends State<register> {
	gender _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    body: SingleChildScrollView(
	      child: SafeArea(
	        child: Column(
		    mainAxisAlignment: MainAxisAlignment.end,
		    children:<Widget> [
		    	SizedBox(
				    height: MediaQuery.of(context).size.height*0.2,
			    ),
		    	Text("Step 2 of 3",style: Theme.of(context).textTheme.headline4,),

				    Container(
					    margin: EdgeInsets.all(10),

					    decoration: BoxDecoration(
						    borderRadius: BorderRadius.circular(10),
						    border: Border.all(color: blue, width: 2),
					    ),
					    child:Column(
						    children: <Widget>[
							textFiels(hint: "Salon Name",),
							    textFiels(hint: "Location",),
							    Container(
								    margin: EdgeInsets.symmetric(horizontal: 20),
							      child: FlatButton(onPressed: (){}, child:Row(
								    children:<Widget> [
								    	Text("Use Current Location",style: Theme.of(context).textTheme.headline6,

									    ),
									    Icon(Icons.location_on,color: Color(0xff25d366),)
								    ],
							      )),
							    ),
							    Container(
								    margin: EdgeInsets.all(20),
								    decoration: BoxDecoration(
									    borderRadius: BorderRadius.circular(10),
									    border: Border.all(color: Colors.grey, width: 2),
								    ),
								    child: Column(
									    children: <Widget>[
									    	Text("Select Salon type",style: Theme.of(context).textTheme.bodyText1,),
										    Divider(
											    thickness: 2,
											    color: Colors.grey,
										    ),
										    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
										    children: [
										    	Column(
												    children: [
																CircleAvatar(

																  child: CircleAvatar(

																   backgroundImage: AssetImage('images/unisex icon.png'),
																  	radius: 30,

																  ),
																	radius: 32,
																	backgroundColor: Colors.grey,
																),
                                Text("UniSex",style: TextStyle(
                                  fontSize:15,
                                  fontWeight: FontWeight.bold
                                  
                                ),),
													    Radio(value: gender.unisex, groupValue:_gender , onChanged: (value){
													    	setState(() {
													    	  _gender=value;
													    	});
													    }),

												    ],
											    ),
											    Column(
												    children: [
													    CircleAvatar(

														    child: CircleAvatar(

															      backgroundImage: AssetImage("images/men icon.png"),
															    radius: 30,

														    ),
														    radius: 32,
														    backgroundColor: Colors.grey,
													    ),
                              Text("Men",style: TextStyle(
                                  fontSize:15,
                                  fontWeight: FontWeight.bold
                                  
                                ),),
													    Radio(value: gender.male, groupValue:_gender , onChanged: (value){
														    setState(() {
															    _gender=value;
														    });
													    })
												    ],
											    ),	Column(
												    children: [


														   CircleAvatar(

														    child: CircleAvatar(

															    backgroundImage: AssetImage("images/women icon.png",),
															    backgroundColor: Colors.white,
															    radius: 30,

														    ),
														    radius: 32,
														    backgroundColor: Colors.grey,
													    ),
                              Text("Women",style: TextStyle(
                                  fontSize:15,
                                  fontWeight: FontWeight.bold
                                  
                                ),),
													    Radio(value: gender.female, groupValue:_gender , onChanged: (value){
														    setState(() {
															    _gender=value;
														    });
													    })
												    ],
											    )
										    ],
										    )
									    ],
								    ),
							    ),
							    materialButton3(text2: "Next",)

						    ],
					    )
			    )
		    ],
	        ),
	      ),
	    ),
    );
  }
}


class textFiels extends StatelessWidget {
  final String hint;
  textFiels({this.hint});
	@override
  Widget build(BuildContext context) {
    return Container(
	    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextField(
	    decoration: InputDecoration(
		    hintText: hint,
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
    );
  }
}
class materialButton3 extends StatelessWidget {
	final String text2;
	materialButton3({this.text2});
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.symmetric(horizontal: 20),
			padding: EdgeInsets.symmetric(vertical: 10),
			height: MediaQuery.of(context).size.height * 0.12,
			child: MaterialButton(
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
				onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>unisex())),
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
