import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../customField/const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _pageIndex = 0;
  final _listContr = ScrollController();

  @override
  void initState() {
    super.initState();

  }

  String? page, catUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body:
        Container(
          child:    SingleChildScrollView(
            child: Column(children: [
              Container(
                  color: nextButtonColor,
                  height: 0.25.sh,
                  width: 1.sw,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                    separatorBuilder: (_, __) => Divider(),
                    itemBuilder: (_, i) {
                      return Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 0.1.sh,
                                width: 0.2.sw,
                                margin: EdgeInsets.only(
                                    right: 20.0,
                                    left: 15.0,
                                    top: 30,
                                    bottom: 0.01.sh),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=60'
                                      //  '${list[i].image}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Fruits",
                                //  '${list[i].categoryName}',
                                style: customizeTextStyle(
                                    FontWeight.bold, 15.0, white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Container(
                                height: 0.1.sh,
                                width: 0.2.sw,
                                margin: EdgeInsets.only(
                                    right: 20.0,
                                    left: 15.0,
                                    top: 30,
                                    bottom: 0.01.sh),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=600'
                                      //  '${list[i].image}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Burger",
                                //  '${list[i].categoryName}',
                                style: customizeTextStyle(
                                    FontWeight.bold, 15.0, white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  )
              ),
              SizedBox(height: 10,),
              ListView.separated(
                controller: _listContr,
                primary: false,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (_, int i) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 8, right: 8, bottom: 8),

                      height: 0.46.sh,
                      width: 1.sw,
                      // color: black,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600",
                           //   "https://images.unsplash.com/photo-1552566626-52f8b828add9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                              // '${list[i].vendorProfile!.store_image}',
                              height: 0.2.sh,
                              width: 1.sw,
                              fit: BoxFit.fill,
                              imageBuilder:
                                  (context, imageProvider) =>
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                              placeholder: (context, url) => Center(
                                  child:
                                  CupertinoActivityIndicator()),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                          Positioned(
                            top: 0.12.sh,
                            left: 0.7.sw,
                            child: Container(
                              height: 0.1.sh,
                              width: 0.2.sw,
                              margin: EdgeInsets.only(
                                  right: 15.0,
                                  //   left: 15.0,
                                  top: 30,
                                  bottom: 0.01.sh),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://shelbyreport.nyc3.cdn.digitaloceanspaces.com/wp-content/uploads/2012/11/safewaylogo.jpg',
                                    // '${list[i].vendorProfile!.store_logo}',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0.25.sh,
                            left: 10,
                            child: Text(
                              "Burger",
                              //'${list[i].vendorProfile!.store_name}',
                              style: customizeTextStyle(
                                  FontWeight.bold,
                                  fontSizeTwenty,
                                  black),
                            ),
                          ),
                          //////////////////////////////////////////////////////////////////////////////////////////
                          Padding(
                            padding:
                            EdgeInsets.only(top: 105, left: 3),
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                  CircleAvatar(
                                    radius: 0.01.sw,
                                  ),
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'FastFood',

                                      // list[i].categoryName!,
                                      style: customizeTextStyle(
                                          FontWeight.normal,
                                          fontSizeFifteen,
                                          black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                          Positioned(
                              top: 0.35.sh,
                              left: 10,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.grey[300],
                                    margin: EdgeInsets.only(
                                        bottom: 0.02.sh),
                                    width: 1.0.sw,
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              "Rating:",
                                              //  "${list[i].vendorReviews![0].rating}",
                                              style:
                                              customizeTextStyle(
                                                  FontWeight
                                                      .normal,
                                                  fontSizeFifteen,
                                                  nextButtonColor),
                                            ),
                                            SizedBox(
                                              width: 0.02.sw,
                                            ),
                                            Text(
                                              "4.6",
                                              //'${list[i].averageRating}',
                                              style:
                                              customizeTextStyle(
                                                  FontWeight
                                                      .normal,
                                                  fontSizeFifteen,
                                                  nextButtonColor),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 1,
                                              minRating: 1,
                                              direction:
                                              Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 1,
                                              itemSize: 0.05.sw,
                                              itemPadding: EdgeInsets
                                                  .symmetric(
                                                  horizontal:
                                                  2.0),
                                              itemBuilder:
                                                  (context, _) =>
                                                  Icon(
                                                    Icons.star,
                                                    color:
                                                    nextButtonColor,
                                                    size: 0.01.sh,
                                                  ),
                                              onRatingUpdate:
                                                  (rating) {
                                                print(rating);
                                              },
                                            ),
                                            Text(
                                              "(59 Ratings)",
                                              // '(${list[i].ratingCount} ratings)',
                                              style:
                                              customizeTextStyle(
                                                  FontWeight
                                                      .normal,
                                                  fontSizeFifteen,
                                                  nextButtonColor),
                                            ),
                                            SizedBox(
                                              width: 0.04.sw,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Status ",
                                        style: customizeTextStyle(
                                            FontWeight.bold,
                                            fontSizeFifteen,
                                            Colors.green),
                                      ),
                                      SizedBox(
                                        width: 0.02.sw,
                                      ),
//                                          Text(
//                                            "Open",
//                                            style: customizeTextStyle(
//                                                FontWeight.normal,
//                                                fontSizeFifteen,
//                                                stepsColor),
//                                          ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],),
          ),
        ));
  }

  void _filterbutton(context) {
    String catIds = '';
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            // color: Colors.grey.shade300,
              color: Color(0xFF737373),
              child: StatefulBuilder(builder: (context, mState) {
                return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                    height: 0.7.sh,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.close,color: Colors.white,),
                            Text(
                              "Filter Options",
                              textAlign: TextAlign.center,
                              style: customizeTextStyle(
                                  FontWeight.normal,
                                  fontSizesixteen,
                                  nextButtonColor),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close),
                              tooltip: 'Increase volume by 10',
                              onPressed: () {
                                setState(() {
                                  Get.back();
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.002.sw,
                        ),
                        // Expanded(
                        //     child: ListView.separated(
                        //       separatorBuilder: (context, _) => Divider(
                        //         height: 1,
                        //       ),
                        //       itemCount:3,
                        //       itemBuilder: (context, index) {
                        //         return CheckboxListTile(
                        //           title: Text('jhhh'),
                        //           contentPadding: EdgeInsets.only(
                        //               left: 10,
                        //               right: 10,
                        //               top: 0,
                        //               bottom: 0),
                        //           value: ischecked!,
                        //           onChanged: (val) {
                        //
                        //           },
                        //         );
                        //       },
                        //     )),

                        // SizedBox(
                        //   height: 0.02.sh,
                        // ),
                        Divider(),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonTheme(
                                minWidth: 140,
                                height: 45,
                                child:ElevatedButton(
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


                                    child: Text('Next',style: TextStyle(color: Colors.black),)
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 140,
                                height: 45,
                                child: ElevatedButton(
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


                                    child: Text('Next',style: TextStyle(color: Colors.black),)
                                ),
                                // child: RaisedButton(
                                //   onPressed: () {
                                //     Get.back();
                                //     print(catIds);
                                //     _vendorsFuture =
                                //         networkCall.getVendorsList(
                                //             page: _pageIndex
                                //                 .toString(), //'1',
                                //             catId: catIds.substring(
                                //                 0, catIds.length - 1),
                                //             longitude:
                                //             sharePrefereceInstance
                                //                 .getLong()
                                //                 .toString(),
                                //             latitude:
                                //             sharePrefereceInstance
                                //                 .getLat()
                                //                 .toString()
                                //                 .toString());
                                //
                                //     setState(() {});
                                //   },
                                //   color: nextButtonColor,
                                //   shape: RoundedRectangleBorder(
                                //     borderRadius:
                                //     BorderRadius.circular(20),
                                //   ),
                                //   child: Text('Apply Filter',
                                //       style: TextStyle(
                                //           color: white,
                                //           fontSize: 16)),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ));
              }));
        });
//     .then((value) {
//   Get.back();
// });
  }

  void _review(context, String vendorid) {
    showModalBottomSheet(
      //  barrierColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              // height: 0.7.sh,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Reviews",
                          textAlign: TextAlign.center,
                          style: customizeTextStyle(FontWeight.normal,
                              fontSizesixteen, nextButtonColor),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),

                        onPressed: () {
                          setState(() {
                            Get.back();
                          });
                        },
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    thickness: 0.002.sw,
                  ),
                  Flexible(
                    // height: 0.7.sh,
                    child: DefaultTabController(
                      length: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TabBar(
                              labelPadding: EdgeInsets.zero,
                              labelColor: black,
                              tabs: [
                                Tab(
                                  text: 'Allreviews',
                                ),
                                Tab(
                                  text: 'Post',
                                )
                              ],
                            ),
                            Container(
                              height: 0.8.sh,
                              child: TabBarView(children: [
                                // Review(
                                //   vendorId: vendorid,
                                // ),
                                // Post(
                                //   vendorId: vendorid,
                                // ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
    //     .then((value) {
    //   Get.back();
    // });
  }


}
