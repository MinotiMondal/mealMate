import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../customField/const.dart';
import '../customField/textFromField.dart';
import 'Signup.dart';

class EnterYourLocation extends StatefulWidget {
  const EnterYourLocation({super.key});

  @override
  State<EnterYourLocation> createState() => _EnterYourLocationState();
}

class _EnterYourLocationState extends State<EnterYourLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 0.45.sh,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(bg),
                    fit: BoxFit.fill,
                  ),
                ),
                width: 1.sw,
                child: Stack(
                  clipBehavior: Clip.none, children: [
                    Positioned(
                      top: 50,
                      child: InkWell(
                        onTap: (){
                          },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 24.0,

                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Enter Your Location",
                            style: antonStyle(FontWeight.w400, 36.0, white),
                          ),
                          Text(
                            "Enter Your delivary Location",
                            style: customizeTextStyle(
                                FontWeight.w400, 16.0, white),
                          ),
                          SizedBox(
                            height: 0.15.sh,
                          ),
                          Container(
                            height: 30,
                            color: Colors.white,
                            width: 1.sw,
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:   textFormField('Location', Icon(Icons.location_on_outlined), 14.0,
                            inputType: TextInputType.emailAddress,
                          //  controller: _emailcontroller,
                            labeltext: 'Location',
                            //  labeltext: 'Email',
                            validationFunction: (String? value) {
                              if (value!.trim().isEmpty) {
                                return "Enter Location ";
                              } else if (!GetUtils.isEmail(value)) {
                                return "Enter valid Location";
                              }}
                        ),),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
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
                  MaterialPageRoute(builder: (context) =>  Signup()),
                );
                },


              child: Text('Next',style: TextStyle(color: Colors.black),),
            ),
          ),
          Divider(
            thickness: 1,
          ),

        ],
      ),
    );
  }
}
