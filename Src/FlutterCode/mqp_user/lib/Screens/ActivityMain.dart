import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mqp_user/Data/AppColor.dart';
import 'package:mqp_user/Widgets/FlatActionButton.dart';
import 'package:mqp_user/Widgets/TopAppBar.dart';

class ActivityMain extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => ActivityMain_State();
  
}

class ActivityMain_State extends State<ActivityMain>
{
  
  //Build function start
  @override
  Widget build(BuildContext context) 
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.WhiteColor,
        floatingActionButton: FlatActionButton(context),
        body: Column(
          children: [

            TopAppBar(context,true)
            ,
            EmptyLayout(context)

          ],
        ),
      )
    );
  }
  //Build function end

  //Empty layout widget start
  Widget EmptyLayout(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 65,
      child: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            children: [
              Image.asset("assets/images/empty.png",width: 140,)
              ,
              Container(
                margin: EdgeInsets.all(10),
                child: Text("Inbox is empty yet",textAlign: TextAlign.center,style: TextStyle( color: AppColor.TextColor,fontSize: 14 ),),
              )
            ],
          ),
        ),
      ),
    );
  }
  //Empty layout widget end
  
}