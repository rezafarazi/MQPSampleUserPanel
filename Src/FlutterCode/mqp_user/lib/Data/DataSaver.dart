import 'package:shared_preferences/shared_preferences.dart';

class DataSaver
{

  static void Save_Data(String name,String value) async
  {
    var data_storage=await SharedPreferences.getInstance();
    await data_storage.setString(name, value);
  }


  static Future<String> Get_Data(String name) async
  {
    var data_storage=await SharedPreferences.getInstance();
    String Login_Token = data_storage.get(name).toString();
    return Login_Token;
  }

}