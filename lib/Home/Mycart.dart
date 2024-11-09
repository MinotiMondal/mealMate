import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../customField/const.dart';


class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   backgroundColor: Colors.grey.shade300,
      //   titleSpacing: 10,
      //    title:
      // ),
      backgroundColor:  white,
      body:  Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(top: 20.0, left: 8, right: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                height: 0.1.sh,
                width: 1.0.sw,

                child: Padding(
                  padding:  EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "My Cart",
                              style: customizeTextStyle(
                                  FontWeight.bold,
                                  fontSizesixteen,
                                  Colors.blue),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/checkout.png'),
                          ],
                        ),
                      ),
                      Text(
                        " Total",
                        style: customizeTextStyle(FontWeight.bold,
                            fontSizesixteen, stepsColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return  Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(12)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 0.35.sw,
                                child: CachedNetworkImage(
                            imageUrl:
"https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=600",                            height: 0.15.sh,
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
                              SizedBox(
                                width: 0.015.sw,
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    //  height: 40.h,
                                    width: 120.w,
                                    child: Text(
                                      // '${detail[index].product.details.productTitle}',
                                      "Nature Valley Granola Bars Sweet Salty Variety Pack",
                                      style: customizeTextStyle(
                                          FontWeight.w500,
                                          twelve,
                                          black),
                                    ),
                                  ),
                                  // Text(
                                  //   '${detail[index].product.productSubTitle}',
                                  //   // "Nature Valley Granola Bars Sweet Salty Variety Pack",
                                  //   style: customizeTextStyle(
                                  //       FontWeight.w500,
                                  //       fourteen,
                                  //       black),
                                  // ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  // Html(
                                  //   data:
                                  //       '${detail[index].product.productDescription}',
                                  //   // "Nature Valley Granola Bars Sweet Salty Variety Pack",
                                  //   // style: customizeTextStyle(
                                  //   //     FontWeight.normal,
                                  //   //     twelve,
                                  //   //     black),
                                  // ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(

                                      width: 120.w,
                                      child: Row(children: [
                                        Text(
                                          "RS  ",
                                          style: customizeTextStyle(
                                              FontWeight.bold,
                                              fourteen,
                                              stepsColor),
                                        ),
                                       Column(
                                         children: [
                                           SizedBox(height: 5,),
                                           Container(
                                             height: 20,
                                             width: 50,
                                             child:  Text(
                                               '456',
                                               //  "\$${detail[index].product.total} ",

                                               style: customizeTextStyle(
                                                   FontWeight.bold,
                                                   fourteen,
                                                   stepsColor),
                                             ),
                                           ),
                                         ],
                                       )
                                      ],)


                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(
                                            right: 10.0),
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor:
                                          stepsColor,
                                          child: Center(
                                            child: IconButton(
                                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                                icon: FaIcon(
                                                  FontAwesomeIcons
                                                      .minus,
                                                  size: 10,
                                                ),
                                                onPressed:
                                                    () async {

                                                }),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color:Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '3',
                                            //  '${detail[index].quantity}',
                                            style: customizeTextStyle(
                                                FontWeight
                                                    .normal,
                                                fontSizeFifteen,
                                                Colors.black),
                                          ),
                                        ),

                                      ),
                                      SizedBox(width: 10,),
                                      CircleAvatar(
                                        radius: 12.r,
                                        backgroundColor:
                                        stepsColor,
                                        child: Center(
                                          child: IconButton(
                                            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                              icon: FaIcon(
                                                FontAwesomeIcons
                                                    .plus,
                                                size: 10,
                                              ),
                                              onPressed:
                                                  () async {
                                                // setState(() {
                                                //   detail[index]
                                                //       .quantity++;
                                                //   detail[index]
                                                //       .product
                                                //       .total =
                                                //   '${double.parse(detail[index].product.salePrice) * detail[index].quantity}';
                                                // });
                                                //
                                                // myTotal.value =
                                                //     calculateTotal(
                                                //         detail);
                                                // print(
                                                //     'dg- ${myTotal}');
                                                // print(
                                                //     detail[index]
                                                //         .product);
                                                // bool result = await networkCall.getcartqty(
                                                //     detail[index]
                                                //         .id
                                                //         .toString(),
                                                //     detail[index]
                                                //         .quantity
                                                //         .toString());
                                              }),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              IconButton(
                                  color: Colors.grey.shade300,
                                  icon:  Icon(
                                    Icons.delete_outlined,size: 25,),
                                  onPressed: () async {
                                    // bool result = await networkCall
                                    //     .getremovecart(detail[index]
                                    //     .id
                                    //     .toString());
                                    //
                                    // if (result) {
                                    //   _addcartdetails = networkCall
                                    //       .getcartdetails();
                                    //   setState(() {});
                                    //   showToast(
                                    //       "product remove from cart",
                                    //       red);
                                    // }
                                  })

                            ],
                          ),
                        ),
                      );
                    })
            ),
          ),
          Container(
            color: stepsColor,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                        " Total: ",
                        style: customizeTextStyle(
                            FontWeight.bold, fontSizeEighteen, white),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) =>  Dashboard()),
                      // );
                    },


                    child: Text('Checkout',style: TextStyle(color: Colors.black),)
                ),
              ],
            ),
          )
        ],
      )

    );
  }


}
