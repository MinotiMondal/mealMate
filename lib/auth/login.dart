import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../Home/bottomnavigation.dart';
import '../customField/const.dart';
import 'EnterYourLocation.dart';
import 'forgotpassword.dart';
import 'intro.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  final double? latitude, longitude;
  final String? address;

  const Login({Key? key, this.latitude, this.longitude, this.address})
      : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;

  bool _isHidden = true;

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 0.35.sh,
                width: 1.sw,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bannerImage,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offAll(Intro());
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                          'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                    Text(
                      'Get Anything ',
                      style: antonStyle(FontWeight.w400, 48.0, white),
                    ),
                    Text(
                      'Easily',
                      style: antonStyle(FontWeight.w400, 40.0, white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.57.sh,
                padding: EdgeInsets.only(left: 0.07.sw, right: 0.07.sw),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('LogIn to your account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Valid Email ";
                        } else if (value.trim().isEmpty) {
                          return "Enter Valid Email";
                        }
                      },
                      textAlign: TextAlign.start,
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        //hintText: 'Email',
                        labelText: 'Email',
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        prefixIcon: Icon(Icons.email_outlined),
                        hintStyle: TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 3.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 3.0)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Valid password ";
                        } else if (value.trim().isEmpty) {
                          return "Enter Valid password";
                        }
                      },
                      obscureText: _isHidden,
                      textAlign: TextAlign.start,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        prefixIcon: Icon(Icons.lock_outline),
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
                        hintStyle: TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 3.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 3.0)),
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
                      height: 0.07.sh,
                      width: 1.sw,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: stepsColor,
                              textStyle: TextStyle(
                                  fontSize: 15,

                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Dashboard()),
                            );
                          },


                          child: Text('Next',style: TextStyle(color: Colors.black),)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ForgetPassword()),
                        );

                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: stepsColor),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){Get.to(()=>EnterYourLocation());},

                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Don’t have account? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: black)),
                      TextSpan(
                          text: ' Register',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: stepsColor)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

}
