
import 'package:flutter/material.dart';
import 'package:macbroapp/screens/homescreen.dart';

class  SigninScreen extends StatefulWidget{
  @override
  SigninState createState()=> SigninState();
}
class  SigninState extends State<SigninScreen>{

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Opacity(opacity: 0.6,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/1.png'),
                    fit: BoxFit.fill
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 100, left: 15,right: 15),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                  height: 400,width: 600,
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/logo.png',height:40,),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text('Sign In',style: TextStyle(
                          color: Colors.black54, fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                      Padding(padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                          child:Column(
                            children: <Widget>[
                              TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(

                                    ),
                                    focusedBorder: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                                    hintText: 'Username'
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                                  hintText: 'Password',
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                      activeColor: Colors.blueAccent,
                                      value: checkBoxValue,
                                      onChanged: (bool value){
                                        setState(() {
                                          checkBoxValue = value;
                                        });
                                      }),
                                  Text('Remember me',style: TextStyle(
                                      color: Colors.black,fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                },
                                child: SizedBox(
                                  height: 45,child: buildButton(),
                                ),
                              )
                            ],
                          )
                      ),

                    ],
                  )
              ),
            ),)
        ],
      ),
    );
  }
  Widget buildButton() {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blueAccent
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0, fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}