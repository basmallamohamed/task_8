import 'package:flutter/material.dart';
import 'package:task_8/Views/home_view.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({super.key});
   @override 
   Widget build (BuildContext context){
      return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView() ,
      );
   }
}