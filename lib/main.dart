import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';
import 'package:nooddev/pages/main_layout.dart';

void main() 
{
  runApp(const MyApp()); //run the app
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp 
    (
      title: 'alexboyce.dev',
      theme: buildGruvboxDarkTheme(),
      debugShowCheckedModeBanner: false,
      //main_Layout is the home screen now
      home: const MainLayout(),
    );
  }
}