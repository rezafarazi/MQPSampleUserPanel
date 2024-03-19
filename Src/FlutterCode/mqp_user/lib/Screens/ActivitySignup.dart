import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mqp_user/Data/AppColor.dart';

class ActivitySignup extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => ActivitySignup_State();

}

class ActivitySignup_State extends State<ActivitySignup>
{
  
  
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
                          hintText: "Name",
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
                          hintText: "Last name",
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
                    margin: EdgeInsets.only(top: 10,bottom: 15,left: 20,right: 20),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextField(
                      style: TextStyle(fontSize: 14),
                      keyboardType: TextInputType.visiblePassword,
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
                    margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                    child: TextButton(
                      onPressed: (){}, 
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
                          child: Text("Signup",style: TextStyle( color: Colors.white ),),
                        ),
                      )
                    ),
                  )
                  ,
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                    child: TextButton(
                      onPressed: (){

                        //Get open login screen
                        Navigator.pop(context);

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
                          child: Text("Login",style: TextStyle( color: Colors.white ),),
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