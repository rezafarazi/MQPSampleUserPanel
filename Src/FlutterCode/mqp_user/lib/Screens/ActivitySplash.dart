import 'package:flutter/material.dart';
import 'package:mqp_user/Data/AppColor.dart';

class ActivitySplash extends StatelessWidget
{
  
  //Build function start
  @override
  Widget build(BuildContext context) 
  {
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