import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macbroapp/screens/homescreen.dart';
import 'package:macbroapp/screens/signinscreen.dart';

class MainDrawer extends StatefulWidget{
  @override
  _MainDrawerState createState() {
    // TODO: implement createState
    return _MainDrawerState();
  }

}

class _MainDrawerState extends State{

  bool _leadVisible = true;

  void leadVisible(){
    setState(() {
      _leadVisible=!_leadVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          children: <Widget>[
            Container(
              height: 100,
              width: double.maxFinite,
              child: Center(child: Image.asset("assets/images/logo.png",height: 150,width: 150,),),
            ),
            ListTile(
              leading: Icon(Icons.explore,color: Colors.black26,),
              title: Text("Dashboard",style: TextStyle(color: Colors.black26,fontSize: 20),),
            ),
            Visibility(

              visible: _leadVisible,
              child: ListTile(
                onTap: (){
                  leadVisible();
                },
                leading: Icon(Icons.pie_chart_outlined,color: Colors.black38,),
                title: Text("Lead",style: TextStyle(color: Colors.black38,fontSize: 20),),
                trailing: InkWell(
                  child: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black26,),
                ),
              ),
              replacement:Column(
                children: <Widget>[
                  ListTile(
                    onTap:(){
                      leadVisible();
                    },
                    leading: Icon(Icons.pie_chart_outlined,color: Colors.black38,),
                    title: Text("Lead",style: TextStyle(color: Colors.black38,fontSize: 20),),
                    trailing: InkWell(
                      child: Icon(Icons.keyboard_arrow_down,color: Colors.black38,),
                    ),),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 70),
                    onTap: (){},
                    title: Text("Training",style: TextStyle(color: Colors.black38,fontSize: 15),),
                  ),ListTile(
                    contentPadding: EdgeInsets.only(left: 70),
                    onTap: (){},
                    title: Text("Projects",style: TextStyle(color: Colors.black38,fontSize: 15),),
                  ),ListTile(
                    contentPadding: EdgeInsets.only(left: 70),
                    onTap: (){},
                    title: Text("Company",style: TextStyle(color: Colors.black38,fontSize: 15),),
                  ),
                ],
              ),

              ),
            ListTile(
              leading: Icon(Icons.assignment,color: Colors.black38,),
              title: Text("Certification",style: TextStyle(color: Colors.black38,fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.school,color: Colors.black38,),
              title: Text("Agreement",style: TextStyle(color: Colors.black38,fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.payment,color: Colors.black38,),
              title: Text("Payments",style: TextStyle(color: Colors.black38,fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.report,color: Colors.black38,),
              title: Text("Report",style: TextStyle(color: Colors.black38,fontSize: 20),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
              },
              leading: Icon(Icons.add_to_home_screen,color: Colors.black38,),
              title:  Text("Logout",style: TextStyle(color: Colors.black38,fontSize: 20),),
            ),
          ],
        ),
    );
  }

}