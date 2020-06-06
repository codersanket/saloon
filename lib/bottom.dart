import 'package:flutter/material.dart';
import 'package:saloonowner/appontiment.dart';
import 'package:saloonowner/profile.dart';

class bottomNavigation extends StatefulWidget {
  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
	List _pages=[appontiment(),me()];
	bool val=false;
	var _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    backgroundColor: Colors.white,
		    iconTheme: IconThemeData(
			    color: Colors.black
		    ),
		    title: Text("Saloon X",style: TextStyle(
			    color: Colors.black
		    ),),
		    actions: [
		    	Switch(value:val , onChanged: (value){
		    		setState(() {
		    		  val=value;
		    		});

			    },

			    )
		    ],
	    ),
	    bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
			BottomNavigationBarItem(icon: Icon(Icons.calendar_today,),title: Text("My Appointment")),
		    BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Me"))
	    ],
		    currentIndex: _index,
		    onTap: (index){
	    	setState(() {
	    	  _index=index;
	    	});
		    },

	    ),
	    body: _pages[_index],
    );
  }
}
