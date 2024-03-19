import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mqp_user/Data/AppColor.dart';

Widget TopAppBar(BuildContext context,var profile)
{
  if(profile)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      child: Stack(
        children: [

          Center(
            child: Image.asset("assets/images/logo_bg.png",height: 58,),
          )
          ,
          Positioned(
            right: 0,
            child: Container(
              height: 65,
              width: 55,
              child: Center(
                child: InkWell(
                  child: Image.asset("assets/icons/user-pen.png",width: 20,),
                  onTap: () {
                    debugPrint("salam");
                  } ,
                ),
              ),
            )
          )

        ],
      ),
    );
  }
  else
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      child: Center(
        child: Image.asset("assets/images/logo_bg.png",height: 58,),
      ),
    );
  }
}