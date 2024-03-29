import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mqp_user/Data/AppColor.dart';
import 'package:mqp_user/Data/DataSaver.dart';
import 'package:mqp_user/Data/Statics.dart';
import 'package:mqp_user/Screens/ActivitySignup.dart';

import '../Api/api.dart';
import 'ActivityMain.dart';

class ActivityLogin extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => ActivityLogin_State();

}

class ActivityLogin_State extends State<ActivityLogin>
{


  //Global variables
  var UsernameTextBox=TextEditingController();
  var PasswordTextBox=TextEditingController();

  var LoadingLoginButtton=false;

  
  
  //Build function start
  @override
  Widget build(BuildContext context) 
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.BackgroundColor,
        body: Center(
            child: Container(
            width: MediaQuery.of(context).size.width * 0.87,
            decoration: BoxDecoration(
              color: AppColor.WhiteColor,
              borderRadius: BorderRadius.circular(42)
            ),
            child: ListView(
              shrinkWrap: true,
              children: [

                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/logo_bg.png",height: 182,),
                  )
                  ,
                  Container(
                    child: Text("Welcome to MQP Panel",style: TextStyle( color: AppColor.GrayTextColor,fontSize: 16 ),textAlign: TextAlign.center,),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 10,left: 20,right: 20),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextField(
                      controller: UsernameTextBox,
                      style: TextStyle(fontSize: 14),
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: AppColor.BorderColor, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: AppColor.BorderColor, width: 1.0),
                          ),
                          hintText: "Username",
                          hintStyle: TextStyle(fontSize: 14),
                          labelStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.only(top: 2,bottom: 2,left: 14,right:14),
                          fillColor:AppColor.WhiteColor,
                          filled: true,
                      ),
                    ),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextField(
                      controller: PasswordTextBox,
                      style: TextStyle(fontSize: 14),
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: AppColor.BorderColor, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: AppColor.BorderColor, width: 1.0),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 14),
                          labelStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.only(top: 2,bottom: 2,left: 14,right:14),
                          fillColor:AppColor.WhiteColor,
                          filled: true,
                      ),
                    ),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 5,left: 20,right: 20),
                    child: TextButton(
                      onPressed: (){
                        
                        
                        //Get loading when click
                        setState(() {
                          LoadingLoginButtton=true;
                        });

                        //Get call login api
                        api().GetLogin(context,UsernameTextBox.text.toString(),PasswordTextBox.text.toString()).then((value) {

                          if(value)
                          {
                            //Get open main screen
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ActivityMain()), (route) => false);

                            //Get save data in device
                            DataSaver.Save_Data("mqp_user_token", Statics.UserData.token.toString());

                          }
                          else
                          {

                            //Get loading when click
                            setState(() {
                              LoadingLoginButtton=false;
                            });

                            Fluttertoast.showToast(
                                msg: "User not found",
                                gravity: ToastGravity.BOTTOM,
                                webPosition: "bottom",
                                toastLength: Toast.LENGTH_SHORT,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }

                        });

                      }, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(AppColor.BlueColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)
                          )
                        )
                      ),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Center(
                          child: (LoadingLoginButtton)? SizedBox( width: 23,height: 23,child: CircularProgressIndicator( color: AppColor.WhiteColor, strokeWidth: 2.5, ), ) :Text("Login",style: TextStyle( color: Colors.white ),)
                        ),
                      )
                    ),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
                    child: TextButton(
                      onPressed: (){

                        //Get open signup screen
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ActivitySignup() ));

                      }, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(AppColor.OrangeColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)
                          )
                        )
                      ),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Center(
                          child: Text("Signup",style: TextStyle( color: Colors.white ),),
                        ),
                      )
                    ),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text("MQP Powered by Rezafta",textAlign: TextAlign.center,style: TextStyle( color: AppColor.GrayTextColor,fontSize: 14 ),),
                  )

              ],
            ),
          ),
        ),
      )
    );
  }
  //Build function end



}