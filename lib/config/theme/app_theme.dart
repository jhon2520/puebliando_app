import 'package:flutter/material.dart';

import 'package:puebliando/core/style/app_colors.dart' 
show AppColors;

class AppTheme{

  static ThemeData getTheme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: AppColors.blackMainColorColor
    );
  }

}