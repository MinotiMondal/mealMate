
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../customField/const.dart';
import '../customField/textFromField.dart';
import 'login.dart';


class Signup extends StatefulWidget {


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isLoading = false;
  bool? isChaecked = false;



  var _nameController = TextEditingController();

  var _mobileController = TextEditingController();

  var _passwordcontroller = TextEditingController();

  var _addresscontroller = TextEditingController();

  var _emailcontroller = TextEditingController();

  bool _isHidden = true;
  bool agreeTermsCondition = false;


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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  "Create Your",
                  style: antonStyle(FontWeight.w400, 36.0, white),
                ),
                Text(
                  "Account",
                  style: antonStyle(FontWeight.w400, 36.0, white),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Text(
                  "Use your mail or continue with social",
                  style: customizeTextStyle(
                      FontWeight.normal, fontSizeEighteen, white),
                ),
                Text(
                  "to create your account",
                  style: customizeTextStyle(
                      FontWeight.normal, fontSizeEighteen, white),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                textFormField(
                    'Username', Icon(Icons.person_outline_outlined), 14.0,
                    controller: _nameController,
                    labeltext: 'User Name',
                    inputFormatters: RegExp('[a-zA-Z ]'),
                    validationFunction: (String? value) {
                      if (value.isBlank!) return "Enter Valid  Name ";
                    }),
                SizedBox(
                  height: 20,
                ),
                textFormField(
                  'Mobile', Icon(Icons.phone_android_outlined), 14.0,
                  controller: _mobileController,
                  inputType: TextInputType.number,
                  labeltext: 'Mobile',
                  validationFunction: (value) {
                    if (value.isEmpty) {
                      return "Enter Valid Mobile Number ";
                    } else if (value.length != 12) {
                      return "Enter Valid Mobile Number";
                    }
                  },
                  // maxLength: 10
                ),
                SizedBox(
                  height: 20,
                ),
                textFormField(
                  'Email',
                  Icon(Icons.email_outlined),
                  14.0,
                  inputType: TextInputType.emailAddress,
                  controller: _emailcontroller,
                  labeltext: 'Email',
                  validationFunction: (String? value) {
                    if (value!.trim().isEmpty)
                      return "Enter email";
                    else if (!GetUtils.isEmail(value))
                      return "Enter valid email";
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                passwordTextFormField(
                    'Password', Icon(Icons.lock_outline), 14.0,
                    labeltext: 'Password',
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
                    controller: _passwordcontroller,
                    validationFunction: (String? value) {
                      if (value!.isBlank!) {
                        return "Enter valid password";
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Container(
                          color: Colors.white,
                          width: 18,
                          height: 18,
                          child: Checkbox(
                            value: isChaecked,
                            onChanged: (value) {
                              setState(() {
                                isChaecked = value!;
                              });
                            },
                            checkColor: Colors.red,
                            activeColor: Colors.white,
                            focusColor: Colors.yellow,
                          ),
                        ),
                      ),
                      Text(
                        'I AGREE to the ',
                        style: TextStyle(
                            fontSize: 0.03.sw,
                            color: white,
                            height: 2,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () async {
                          //  await launch("https://www.icchedana.co.in/TC.htm");
                        },
                        child: Text(
                          'Terms & Conditions ',
                          style: TextStyle(
                              fontSize: 0.03.sw,
                              color: Colors.black,
                              height: 2,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        'of Multivendor',
                        style: TextStyle(
                            fontSize: 0.03.sw,
                            color: white,
                            height: 2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (isLoading)
                  CupertinoActivityIndicator(
                    radius: 0.02.sh,
                  ),
                SizedBox(
                //  height: 0.09.sh,
                  width: 1.sw,
                  child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: stepsColor,
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
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
