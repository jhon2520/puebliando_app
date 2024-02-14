import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:puebliando/core/utils/enums/index.dart' 
  show FontSizeEnum;



class AppFonts{

  static TextStyle getFontStyle(FontSizeEnum fontSizeEnum, Color fontColor){
    return GoogleFonts.poppins(
      fontSize: fontSizeEnum.size,
      color: fontColor
    );

  }

}