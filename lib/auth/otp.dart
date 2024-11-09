import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'resetpassword.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../customField/const.dart';

class Otp extends StatefulWidget {


  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 1.sh,
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgRegister),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(
                          Icons.close_outlined,
                          color: white,
                        ),
                        onPressed: () => Get.back()),
                  ),
                  Text(
                    "Enter OTP",
                    style: antonStyle(FontWeight.w400, 36.0, white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Check your E-mail inbox for OTP",
                    style: customizeTextStyle(
                        FontWeight.normal, fontSizeEighteen, white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //
                  // ),
                  PinCodeTextField(
                    cursorColor: black,
                    appContext: context,
                    length: 6,

                    //obscureText: false,
                    //animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 40,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeColor: Colors.white,
                        selectedColor: Colors.white,
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white),
                    animationDuration: Duration(milliseconds: 300),
                    //  backgroundColor: Colors.blue.shade50,
                    enableActiveFill: true,
                    //     errorAnimationController: errorController,
                    //    controller: textEditingController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (code) {
                     // validateOtp(code: code, otp: widget.otp);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ResetPassword()),
                        );
                      },
                      child: Row(children: [
                        Text(
                          "Did not receive OTP? ",
                          style: customizeTextStyle(
                              FontWeight.normal, fontSizeEighteen, white),
                        ),
                        Text(
                          "Send Again",
                          style: customizeTextStyle(
                              FontWeight.normal, fontSizeEighteen, black),
                        ),
                      ],)
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
