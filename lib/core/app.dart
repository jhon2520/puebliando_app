import 'package:flutter/material.dart';

import 'package:puebliando/config/index.dart'
  show AppTheme;
import 'package:puebliando/presentation/screen/index.dart' 
  show HomeScreen;
import 'constants/app_strings.dart' 
  show AppStrings;



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      title: AppStrings.appTitle,
      home: const HomeScreen()
    );
  }
}

