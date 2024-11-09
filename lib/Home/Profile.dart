import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../customField/const.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final picker = ImagePicker();
  File? _image;
  bool agreeTermsCondition = false;
  String? base64Img;
  String? imgPath;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              width: 1.sw,
              height: 0.2.sh,
              color: stepsColor,
              child: Stack(
                clipBehavior: Clip.none, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                         "Minoti Mondal",
                        style: customizeTextStyle(FontWeight.normal,
                            fontSizeTwenty, Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 15,
                    child: InkWell(
                      onTap: () {
                       // _pickImage(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 42,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 120,
                      left: 80,
                      child: InkWell(
                          onTap: () {
                          },
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 40,
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                 //   => Get.to(AccountInfo()),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.settings), onPressed: () {}),
                        Text("Account Settings",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: () {},
                    //=> Get.to(Wallet()),
                    child: Row(
                      children: [
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(
                              FontAwesomeIcons.creditCard,
                              size: 18,
                              color: black,
                            ),
                            onPressed: () {
                              print("Pressed");
                            }),
                        Text("Wallet",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: (){},
                  //  => Get.to(Orders()),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/orders.png'),
                        SizedBox(
                          width: 14,
                        ),
                        Text("Orders",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: () {},
                   // => Get.to(About()),
                    child: Row(
                      children: [
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(
                              FontAwesomeIcons.exclamationCircle,
                              size: 18,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("Pressed");
                            }),
                        Text("About us",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.07.sh,
              width: 0.8.sw,
              child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: stepsColor,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,

                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  Dashboard()),
                    // );
                  },


                  child: Text('Logout',style: TextStyle(color: Colors.black),)
              ),
            ),
          ],
        )
            );
  }

}
