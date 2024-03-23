import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mqp_user/Models/UserModel.dart';
import 'package:mqp_user/Server/Server.dart';

import '../Data/Statics.dart';

class api
{


  //Get login api start
  Future<bool> GetLogin(BuildContext context,var Username,var Password) async
  {

    var LoginResponse = await Server().PostRequest(context, "Login", {"username":Username,"password":Password}, false);

    if(jsonDecode(LoginResponse["data"].toString())["token"]!=null)
    {
      Statics.UserData =
          UserModel.FromJson(jsonDecode(LoginResponse["data"].toString()));

      Statics.UserToken=Statics.UserData.token;

      return true;
    }
    else
    {
      return false;
    }

  }
  //Get login api end


  //Get login api start
  Future<void> GetUser(BuildContext context) async
  {

    var LoginResponse = await Server().PostRequest(context, "GetUser", {}, true);
    debugPrint(LoginResponse.toString());

  }
  //Get login api end



}