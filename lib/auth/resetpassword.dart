import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../customField/const.dart';
import '../customField/textFromField.dart';
import 'login.dart';


class ResetPassword extends StatefulWidget {

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  var _passwordcontroller = TextEditingController();
  var _newpassword = TextEditingController();
  bool isLoading = false;
  bool _isHidden = true;

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
            child: Form(
              key: _formkey,
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
                          onPressed: () {Get.back();}),
                    ),
                    Text(
                      "Reset Password",
                      style: antonStyle(FontWeight.w400, 36.0, white),
                    ),
                    Text(
                      "Use your mail or continue with social to create your account",
                      style: customizeTextStyle(
                          FontWeight.normal, fontSizeEighteen, white),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    passwordTextFormField(
                        'Password', Icon(Icons.lock_outline), 14.0,
                        labeltext: ' New Password',
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                _isHidden = !_isHidden;
                              });
                            },
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: stepsColor,
                            )),
                        obscureText: _isHidden,
                        controller: _passwordcontroller,
                        validationFunction: (String? value) {
                          if (value!.isBlank!) {
                            return "Password must be atleast 6 character ";
                          } else if (value.length < 6) {
                            return "Password must be atleast 6 character";
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    passwordTextFormField(
                      'Password',
                      Icon(Icons.lock_outline),
                      14.0,
                      labeltext: ' Re-Enter Password',
                      validationFunction: (String? value) {
                        if (value!.isBlank!) {
                          return "Password must be atleast 6 character ";
                        } else if (value.length < 6) {
                          return "Password must be atleast 6 character";
                        }
                      },
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _isHidden = !_isHidden;
                            });
                          },
                          child: Icon(
                            _isHidden ? Icons.visibility_off : Icons.visibility,
                            color: stepsColor,
                          )),
                      obscureText: _isHidden,
                      controller: _newpassword,
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
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: stepsColor,
                              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 15,

                                  fontWeight: FontWeight.bold)),
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Login()),
                            );

                          },


                          child: Text('Next',style: TextStyle(color: Colors.black),)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }


}
