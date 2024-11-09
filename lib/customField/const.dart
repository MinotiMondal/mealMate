import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

/*-------------------------text-------------------------*/
TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);
void showSnack(String msg,
    {String title = 'Alert',
      Color   background = Colors.red,
      duration = 3,
      Color color = Colors.white}) {
  Get.snackbar(title, msg,
      backgroundColor: background,
      colorText: color,
      duration: Duration(seconds: duration));
}
TextStyle customizeTextStyleSmallerSpace(fontWeight, fontSize, fontColor) =>
    GoogleFonts.anton(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            // fontFamily: 'Poppins',
            wordSpacing: 1,
            letterSpacing: 0.3,
            color: fontColor,
            fontSize: fontSize));

TextStyle antonStyle(
    fontWeight,
    fontSize,
    fontColor,
    ) =>
    GoogleFonts.anton(
        fontWeight: fontWeight, fontSize: fontSize, color: fontColor);

/*-------------------------images-------------------------*/
final oneImage = 'assets/1.png';
final twoImage = 'assets/2.png';
final threeImage = 'assets/3.png';
final bannerImage = 'assets/banner.png';
final wallmart = 'assets/wallmart.png';
final addtocart = 'assets/addtocart.png';
final bg = 'assets/bg1.png';
final bgRegister = 'assets/bgRegister.png';
final filterSvg = 'assets/filter.svg';
final filterPng = 'assets/filter_png.png';


/////////////////-----------//////////////


/*-------------------------Fluttertoast-------------------------*/

showToast(msg, color) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: color,
    textColor: white,
    fontSize: 16.0);

/*--------------------------------------size*/
final double fontSizeEleven = 11.0;
final double twelve = 12.0;
final double fourteen = 14.0;
final double fontSizeEighteen = 18.0;
final double fontSizeFifteen = 15.0;
final double fontSizesixteen = 16.0;

final double fontSizeTwenty = 20.0;
final double twentytwo = 22.0;
final double twentyfour = 24.0;
final double twentyfive = 25.0;
final double thirty = 25.0;
final double thirtyfive = 25.0;

/*-------------------------colors-------------------------*/

final Color transperent = Colors.transparent;
final Color white = Colors.white;
final Color black = Colors.black;
final Color grey = Colors.grey;
final Color red = Colors.red;
//final Color bottonsheet = Color(E5E5E5);

final Color stepsColor = Color.fromRGBO(246, 99, 6, 1);
final Color nextButtonColor = Color.fromRGBO(56, 208, 216, 1);
final Color gridviewcolor = Color.fromRGBO(0, 0, 10, 0);
final Color inputcolor = Color.fromRGBO(249, 249, 249, 1);
final Color Glocerry = Color.fromRGBO(
  0,
  0,
  0,
  0.4,
);



showProgress(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: CupertinoActivityIndicator(
            radius: 25,
          ),
        );
      },
      barrierDismissible: false);
}

void hideProgress(BuildContext context) {
  Navigator.pop(context);
}
