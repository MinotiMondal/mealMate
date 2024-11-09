import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customField/const.dart';
import 'EnterYourLocation.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final List<Widget> mywidgets = [Intro1(), Intro2(), Intro3()];
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: mywidgets.length,
                    itemBuilder: (context, i) {
                      return mywidgets[i];
                    })),
            Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4.0,
                      offset: Offset(1, -1)),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                border: Border.all(
                  color: gridviewcolor,
                  width: 8,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: getIndicator(),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                  backgroundColor: stepsColor,
   // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    textStyle: TextStyle(
    fontSize: 15,

    fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EnterYourLocation()),
                      );
                    //  Get.to( ()=>EnterYourLocation());
                      },


                    child: Text('Next',style: TextStyle(color: Colors.black),)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getIndicator() {
    return List<Widget>.generate(
        mywidgets.length,
            (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: _currentPage == index
                  ? Colors.yellow[900]
                  : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
        ));
  }

}
class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 0.03.sh, right: 0.05.sw),
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                //    Get.to(()=>Dashboard());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Skip ',
                        style: customizeTextStyle(
                            FontWeight.normal, fourteen, black),
                      ),
                      Text(
                        '>>',
                        style: customizeTextStyle(
                            FontWeight.normal, fontSizeEighteen, black),
                      ),
                    ],
                  ))),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('Step 01',
                      style: customizeTextStyleSmallerSpace(
                          FontWeight.w400, twentyfour, stepsColor)),
                  Expanded(
                    child: Image.asset(
                      oneImage,
                      width: 0.5.sw,
                    ),
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Enter Your Delivery Address',
                            textAlign: TextAlign.center,
                            style: customizeTextStyleSmallerSpace(
                                FontWeight.w400, twentyfour, black)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'It is a long established fact that a reader will be distracted by ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 0.03.sh, right: 0.05.sw),
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                //    Get.to(Dashboard());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Skip ',
                        style: customizeTextStyle(
                            FontWeight.normal, fourteen, black),
                      ),
                      Text(
                        '>>',
                        style: customizeTextStyle(
                            FontWeight.normal, fontSizeEighteen, black),
                      ),
                    ],
                  ))),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('Step 02',
                      style: customizeTextStyleSmallerSpace(
                          FontWeight.w400, twentyfour, stepsColor)),
                  Expanded(
                    child: Image.asset(
                      twoImage,
                      width: 0.5.sw,
                    ),
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Login To Your Account',
                            textAlign: TextAlign.center,
                            style: customizeTextStyleSmallerSpace(
                                FontWeight.w400, twentyfour, black)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'It is a long established fact that a reader will be distracted by ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 0.03.sh, right: 0.05.sw),
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                  //  Get.to(Dashboard());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Skip ',
                        style: customizeTextStyle(
                            FontWeight.normal, fourteen, black),
                      ),
                      Text(
                        '>>',
                        style: customizeTextStyle(
                            FontWeight.normal, fontSizeEighteen, black),
                      ),
                    ],
                  ))),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('Step 03',
                      style: customizeTextStyleSmallerSpace(
                          FontWeight.w400, twentyfour, stepsColor)),
                  Expanded(
                    child: Image.asset(
                      threeImage,
                      width: 0.5.sw,
                    ),
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Choose Your Shop And Start Shopping',
                            textAlign: TextAlign.center,
                            style: customizeTextStyleSmallerSpace(
                                FontWeight.w400, twentyfour, black)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'It is a long established fact that a reader will be distracted by ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
