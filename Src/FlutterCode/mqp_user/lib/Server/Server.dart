import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mqp_user/Data/Statics.dart';

class Server
{

  //Global variables
  static var ServerAddress="http://localhost:8085/";


  //Auth headers
  Map<String, String> get headers => {
    "AuthMQPUser": Statics.UserToken,
  };


  //Get request to server start
  Future<Map<String,dynamic>> GetRequest(BuildContext context,var Address,var Auth) async
  {

    if(Auth)
    {
      var response=await http.get(
        Uri.parse(ServerAddress+Address),      
        headers: { "UserAuth": Statics.UserToken }
      );

      return { "status":response.statusCode , "data" : response.body };

    }
    else
    {
      var response=await http.get(
        Uri.parse(ServerAddress+Address),
        headers: { "Access-Control-Allow-Origin": "*" }
      );

      return { "status":response.statusCode , "data" : response.body };
    }

  }
  //Get request to server end


  //Post request to server start
  Future<Map<String,dynamic>> PostRequest(BuildContext context,var Address,var Data,var Auth) async
  {
    if(Auth)
    {
      debugPrint("Header is "+headers.toString());
      var response=await http.post(
        Uri.parse(ServerAddress+Address),      
        headers: { 'Content-type': 'application/json',
              'Accept': 'application/json',
              "Authorization": "Some token"},
      );

      return { "status":response.statusCode , "data" : response.body };

    }
    else
    {
      var response=await http.post(
        Uri.parse(ServerAddress+Address),      
        body: Data
      );

      return { "status":response.statusCode , "data" : response.body };
    }

  }
  //Post request to server end

}