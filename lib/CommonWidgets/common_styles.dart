import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonStyles{
  CommonStyles._();
  static textFieldStyle(){
    return GoogleFonts.montserrat(
      textStyle:TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
      )
    );
  }
  static whiteTextBoldW600(){
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
     color: Colors.white,
     fontSize: 15,
     fontWeight: FontWeight.w600,
     fontFamily: "Montserrat"
      )
    );
  }
  static blackTextBoldw600(){
    return GoogleFonts.montserrat(
 color: Colors.black,
 fontSize: 15,
 fontWeight: FontWeight.w600,
 
    );
  }
   static WhiteTextBoldw700(){
    return GoogleFonts.abel(
 color: Colors.white,
 fontSize: 16,
 fontWeight: FontWeight.w600,
 
    );
  }
     static OrangeTextW600(){
    return GoogleFonts.montserrat(
 color: Colors.orange[900],
 fontSize: 15,
 fontWeight: FontWeight.w600,
 
    );
  }
}