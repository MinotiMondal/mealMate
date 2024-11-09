import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customField/const.dart';

class Ser extends StatefulWidget {
  @override
  _SerState createState() => _SerState();
}

class _SerState extends State<Ser> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Search Your Food ";
                    }
                  },
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Search Your Food',
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 3.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 3.0)),
                  ),
                ),
              ),

              GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  childAspectRatio: (itemWidth / (size.height / 2.5)),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(6, (int indexValue) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // if you need this
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, right: 8, top: 2),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=600",
                                height: 0.13.sh,
                                width: 0.30.sw,
                                placeholder: (context, url) =>
                                    Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),

                            Text(
                              'Burger',
                              style: customizeTextStyle(
                                  FontWeight.w500, fontSizeFifteen, black),
                            ),
                            SizedBox(
                              height: 0.01.sh,
                            ),
                            Text(
                              'A burger, or hamburger, is a patty of ground meat',
                              style: customizeTextStyle(
                                  FontWeight.normal, fontSizeFifteen, black),
                            ),
                            SizedBox(
                              height: 10,
                            ),


                            Flexible(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'RS:200',
                                  style: customizeTextStyle(FontWeight.normal,
                                      fontSizeFifteen, stepsColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
            ],
          ),
        ));
  }

}
