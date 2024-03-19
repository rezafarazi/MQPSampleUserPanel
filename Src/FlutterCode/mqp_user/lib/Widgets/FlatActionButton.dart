import 'package:flutter/material.dart';
import 'package:mqp_user/Data/AppColor.dart';

//Main screen flat action button widget start
Widget FlatActionButton(BuildContext context)
{
  return SizedBox(
      width: 50,
      height: 50,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColor.BlueColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
            )
          )
        ),
        onPressed: (){

            //Get add new chat dialog
            NewChatDialog(context);

        },
        child: Container(
          child: Image.asset("assets/icons/comment-alt-edit.png",width: 20,),
        )
      ),
    );
}
//Main screen flat action button widget end

//Get add new chat dialog start
Future NewChatDialog(BuildContext context)
{
  return showDialog(
    context: context, 
    builder: (context){
      return AlertDialog(
        backgroundColor: AppColor.WhiteColor,
        surfaceTintColor: AppColor.WhiteColor,
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 250,
          color: Colors.white,
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset("assets/images/logo_bg.png",width: 100,),
              )
              ,
              Container(
                child: Text("Please enter user address",textAlign: TextAlign.center,style: TextStyle( color: AppColor.GrayTextColor,fontSize: 14 ),),
              )
              ,
              Container(
                margin: EdgeInsets.only(top: 15,bottom: 5,left: 5,right: 5),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextField(
                  style: TextStyle(fontSize: 12),
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
                      hintText: "User address",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 0,bottom: 0,left: 5,right:5),
                      fillColor:AppColor.WhiteColor,
                      filled: true,
                  ),
                ),
              )
              ,
              Container(
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 0,right: 0),
                height: 40,
                child: TextButton(
                  onPressed: (){
                    
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
                      child: Text("Done",style: TextStyle( color: Colors.white ,fontSize: 12),),
                    ),
                  )
                ),
              )

            ],
          ),
        ),
      );
    }
  );
}
//Get add new chat dialog end
