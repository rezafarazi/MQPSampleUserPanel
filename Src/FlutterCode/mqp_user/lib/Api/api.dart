import 'package:flutter/material.dart';
import 'package:mqp_user/Server/Server.dart';

class api
{


  //Get login api start
  Future<void> GetLogin(BuildContext context,var Username,var Password) async
  {

    var LoginResponse= await Server().PostRequest(context, "Login", {"username":Username,"password":Password}, false);
    debugPrint(LoginResponse.toString());

  }
  //Get login api end



}