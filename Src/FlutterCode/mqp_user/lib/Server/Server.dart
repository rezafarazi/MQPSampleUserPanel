import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Server
{

  //Global variables
  static var ServerAddress="http://localhost:8085/";


  //Get request to server start
  Future<Map<String,dynamic>> GetRequest(BuildContext context,var Address,var Auth) async
  {

    if(Auth)
    {
      var response=await http.get(
        Uri.parse(ServerAddress+Address),      
        headers: { "Auth":"" }
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
      var response=await http.post(
        Uri.parse(ServerAddress+Address),      
        headers: { "Auth":"" },
        body: Data
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