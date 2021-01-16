import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prefernce/model/users.dart';
import 'package:prefernce/page/MyHomePage.dart';
import 'package:prefernce/page/sign%20up.dart';
import 'package:prefernce/services/storeprefernce.dart';



class Login extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {

  final emailControler=new TextEditingController();
  final passwordControler=new TextEditingController();

  _doLogin(){
    String email=emailControler.text.toString().trim();
    String password=passwordControler.text.toString().trim();
    User user=User.from(email:email,password: password );
    Pref.storeUserName(user);
    Pref.loadUserName().then((value) => {
     if(value.password.isNotEmpty &&value.email.isNotEmpty){
       Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyHomePage()))
     }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[400],
      body: ListView(children: [
        Stack(
          children: [

            Container(
              margin: EdgeInsets.all(10),
              height:MediaQuery.of(context).size.height,width:double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue[200],width: 4),
                  boxShadow: [
                    BoxShadow(color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 0

                    )


                  ]
              ),

            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Container(
                    width:200,

                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/image.jpg'),fit: BoxFit.cover
                        )
                    ),
                  ),
                  Transform.translate(
                    offset:Offset(0,-10),
                    child:Column(
                      children:[
                        Text('Welcome back!',style:TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        )),
                        SizedBox(height: 3,),
                        Text('Log in to your existant account of Q Allure',style:TextStyle(color:Colors.grey[500],fontSize: 15),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,

                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color:Colors.blue,width: 2 )
                    ),
                    child: TextField(

                      style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(left: 10),
                        hintText:'Jonewilliams@gmail.com',
                        hintStyle: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                        icon:Padding(
                          padding:  EdgeInsets.all(15),
                          child: FaIcon(FontAwesomeIcons.user,color:Colors.blue,size: 16,),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,

                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color:Colors.blue,width: 2 )
                    ),
                    child: TextField(

                      style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(left: 10),
                        hintText:'Password',
                        hintStyle: TextStyle(color:Colors.grey),
                        border: InputBorder.none,
                        icon:Icon(Icons.lock,color:Colors.grey,size: 18,),
                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',style:TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    margin: EdgeInsets.only(left: 60,right: 60),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(

                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: FlatButton(
                      onPressed: (){},
                      child: Text('LOG IN',style: TextStyle(color: Colors.white),),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Text('OR connect using',style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,

                          decoration: BoxDecoration( color: Colors.indigo,

                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebookF,color:Colors.white,size: 15,),
                              SizedBox(width:10,),
                              Text('Facebook',style:TextStyle(
                                fontSize: 15,
                                color:Colors.white,
                                fontWeight: FontWeight.w600,
                              )),


                            ],
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,

                          decoration: BoxDecoration( color: Colors.red,

                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.google,color:Colors.white,size: 15,),
                              SizedBox(width:10,),
                              Text('Facebook',style:TextStyle(
                                fontSize: 15,
                                color:Colors.white,
                                fontWeight: FontWeight.w600,
                              )),


                            ],
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  //#dont have an account?
                  Container(
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('Don\'t have an account? ',style:TextStyle()),
                        GestureDetector(
                          child:Text('Sign Up',style:TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),),
                          onTap:()async{
                            await Navigator.push(context, MaterialPageRoute(builder:(ctx)=>SignUp()));
                          },
                        ),
                      ],
                    ),
                  ),































                ],
              ),


            )




          ],
        )
      ],)
    );
  }
}
