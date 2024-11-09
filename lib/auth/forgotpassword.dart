import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../customField/const.dart';
import '../customField/textFromField.dart';
import 'otp.dart';


class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var _emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                child: Form(
                  key: _formkey,
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
                        "Forgot Password",
                        style: antonStyle(FontWeight.w400, 36.0, white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Use your mail to continue ",
                        style: customizeTextStyle(
                            FontWeight.normal, fontSizeEighteen, white),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      textFormField('Email', Icon(Icons.email_outlined), 14.0,
                          inputType: TextInputType.emailAddress,
                          controller: _emailcontroller,
                          labeltext: 'Email',
                          //  labeltext: 'Email',
                          validationFunction: (String? value) {
                            if (value!.trim().isEmpty) {
                              return "Enter Email ";
                            } else if (!GetUtils.isEmail(value)) {
                              return "Enter valid email";
                            }}
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      if(isLoading )
                        CupertinoActivityIndicator(
                          radius: 0.02.sh,
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 0.07.sh,
                        width: 1.sw,
                        child:  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: stepsColor,
                                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 15,

                                    fontWeight: FontWeight.bold)),
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Otp()),
                              );

                            },


                            child: Text('Next',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }


}
