import 'package:flutter/material.dart';
import 'package:mqp_user/Screens/ActivitySplash.dart';

//Main function start
void main()
{
  runApp(const MyApp());
}
//Main function end

//Main starter class start
class MyApp extends StatelessWidget
{

  //Constractor function start
  const MyApp({super.key});
  //Constractor function end

  //Build function start
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'MQP user app',
      home: ActivitySplash(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: 'OpenSans',
        useMaterial3: true,
      ),
    );
  }
  //Build function end

}
//Main starter class end