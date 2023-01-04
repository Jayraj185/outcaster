import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({Key? key}) : super(key: key);

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  iosAppStoreProvider? ProviderTrue;
  iosAppStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosAppStoreProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosAppStoreProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w,top: 3.h,right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Apps",style: TextStyle(color: CupertinoColors.black,fontSize: 30.sp,fontWeight: FontWeight.bold),),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                        color: CupertinoColors.black,
                        shape: BoxShape.circle
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset("assets/image/prf.jpg",fit: BoxFit.cover,)),
                  ),
                ],
              ),
            ),
            Container(
              height: 41.h,
              width: MediaQuery.of(context).size.width,
               //color: CupertinoColors.systemTeal,
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 36.2.h,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 43.h,
                         autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 18/5,
                          onPageChanged: (index,_){
                            ProviderFalse!.SliderIndex2(index);
                          }
                        // autoPlayCurve: Curves.easeInOutExpo
                      ),
                      itemCount: ProviderTrue!.Games.length,
                      itemBuilder: (context, index,realIndex) {
                        return Container(
                          width: 88.w,
                           //color: CupertinoColors.systemRed,
                           // margin: EdgeInsets.symmetric(horizontal: 3.w),
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "NOW WITH SIRI",
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 12.sp
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "${ProviderTrue!.Apps1[index].tital}",
                                  style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontSize: 14.sp
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "${ProviderTrue!.Apps1[index].subtital}",
                                  style: TextStyle(
                                      color: CupertinoColors.systemGrey,
                                      fontSize: 12.sp
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.1.h,),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 26.h,
                                  width: 93.w,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.systemRed,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Apps1[index].image}",fit: BoxFit.fill,)),
                                ),
                              )
                            ],
                          ),
                        );
                      },),
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: ProviderTrue!.Games.asMap().entries.map((e) => ProviderTrue!.index2==e.key?Container(
                        height: ProviderTrue!.index2==e.key?1.h:0.7.h,
                        width: 4.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                        decoration: BoxDecoration(
                          color: ProviderTrue!.index2==e.key?CupertinoColors.activeBlue:CupertinoColors.inactiveGray,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ):Container(
                        height: 1.2.h,
                        width: 1.2.h,
                        margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                        decoration: BoxDecoration(
                            color: ProviderTrue!.index2==e.key?CupertinoColors.activeBlue:CupertinoColors.inactiveGray,
                            shape: BoxShape.circle
                        ),
                      )).toList()
                  )
                ],
              ),
            ),
            SizedBox(height: 2.1.h,),
            Padding(
              padding: EdgeInsets.only(left: 6.w,right: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "15 Great Apps for iOS",
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 12.sp
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              // color: CupertinoColors.systemTeal,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProviderTrue!.Apps2.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 88.w,
                     //color: CupertinoColors.systemRed,
                    margin: EdgeInsets.only(left: 6.w,right: 6.w,top: 1.2.h),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 12.h,
                            width: 93.w,
                            decoration: BoxDecoration(
                               //color: CupertinoColors.systemBlue,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 10.h,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Apps2[index].image}",fit: BoxFit.fill,)),
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 46.w,
                                   // color: CupertinoColors.systemOrange,
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 2.h,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps2[index].tital}",
                                            style: TextStyle(
                                                color: CupertinoColors.black,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps2[index].subtital}",
                                            style: TextStyle(
                                                color: CupertinoColors.systemGrey,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 16.w,
                                    //color: CupertinoColors.white,
                                    alignment: Alignment.centerLeft,
                                    child: Text("OPEN",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 12.h,
                            width: 93.w,
                            decoration: BoxDecoration(
                              //color: CupertinoColors.systemBlue,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 10.h,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Apps3[index].image}",fit: BoxFit.fill,)),
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 46.w,
                                    // color: CupertinoColors.systemOrange,
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 2.h,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps3[index].tital}",
                                            style: TextStyle(
                                                color: CupertinoColors.black,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps3[index].subtital}",
                                            style: TextStyle(
                                                color: CupertinoColors.systemGrey,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 16.w,
                                    //color: CupertinoColors.white,
                                    alignment: Alignment.centerLeft,
                                    child: Text("OPEN",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 12.h,
                            width: 93.w,
                            decoration: BoxDecoration(
                              //color: CupertinoColors.systemBlue,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 10.h,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Apps4[index].image}",fit: BoxFit.fill,)),
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 46.w,
                                    // color: CupertinoColors.systemOrange,
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 2.h,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps4[index].tital}",
                                            style: TextStyle(
                                                color: CupertinoColors.black,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "${ProviderTrue!.Apps4[index].subtital}",
                                            style: TextStyle(
                                                color: CupertinoColors.systemGrey,
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 10.h,
                                    width: 16.w,
                                    //color: CupertinoColors.white,
                                    alignment: Alignment.centerLeft,
                                    child: Text("OPEN",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
