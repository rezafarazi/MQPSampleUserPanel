import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mqp_user/Api/api.dart';
import 'package:mqp_user/Data/AppColor.dart';
import 'package:mqp_user/Screens/ActivityLogin.dart';

class ActivitySplash extends StatelessWidget
{
  
  //Build function start
  @override
  Widget build(BuildContext context) 
  {

    //Get timer start
    Timer.periodic(Duration(seconds: 1),(timer){

      //Get open login screen
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> ActivityLogin() ), (route) => false);

      timer.cancel();
    });
    //Get timer end


    return Scaffold(
        backgroundColor:AppColor.BackgroundColor,
        body: Center(
            child: Container(
              child: Image.asset("assets/images/logo_bg.png",width: 230,),
          ),
        ),
    );
  }
  //Build function end
  
}