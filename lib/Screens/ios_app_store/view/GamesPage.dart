import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
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
                  Text("Games",style: TextStyle(color: CupertinoColors.black,fontSize: 30.sp,fontWeight: FontWeight.bold),),
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
              child: Column(
                children: [
                  SizedBox(
                    height: 36.2.h,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider.builder(
                      //scrollDirection: Axis.horizontal,
                      options: CarouselOptions(
                          height: 43.h,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          onPageChanged: (index,_){
                            ProviderFalse!.SliderIndex(index);
                          }
                          // aspectRatio: 12/5
                        // autoPlayCurve: Curves.easeInOutExpo
                      ),

                      itemCount: ProviderTrue!.Games.length,
                      itemBuilder: (context, index,realIndex) {
                      return Container(
                        width: 88.w,
                        // color: CupertinoColors.systemRed,
                       // margin: EdgeInsets.all(3.h),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  "NEW GAME",
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
                                  "${ProviderTrue!.Games[index].tital}",
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
                                  "${ProviderTrue!.Games[index].subtital}",
                                style: TextStyle(
                                  color: CupertinoColors.systemGrey,
                                  fontSize: 14.sp
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
                                child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Games[index].image}",fit: BoxFit.fill,)),
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
                    children: ProviderTrue!.Games.asMap().entries.map((e) => ProviderTrue!.index==e.key?Container(
                      height: ProviderTrue!.index==e.key?1.h:0.7.h,
                      width: 4.w,
                      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                      decoration: BoxDecoration(
                        color: ProviderTrue!.index==e.key?CupertinoColors.activeBlue:CupertinoColors.inactiveGray,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ):Container(
                      height: 1.2.h,
                      width: 1.2.h,
                      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                      decoration: BoxDecoration(
                          color: ProviderTrue!.index==e.key?CupertinoColors.activeBlue:CupertinoColors.inactiveGray,
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
                    "Discover AR Gaming",
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
            /*
            * Container(
                      height: ProviderTrue!.index==e.key?1.h:0.7.h,
                      width: 4.w,
                      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                      decoration: BoxDecoration(
                          color: ProviderTrue!.index==e.key?CupertinoColors.activeBlue:CupertinoColors.inactiveGray,
                          borderRadius: BorderRadius.circular(100),
                      ),
                    )).toList()*/
            Container(
              height: 48.h,
              width: MediaQuery.of(context).size.width,
              // color: CupertinoColors.systemTeal,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProviderTrue!.Games2.length,
                itemBuilder: (context, index) {
                return Container(
                  width: 88.w,
                  // color: CupertinoColors.systemRed,
                  margin: EdgeInsets.all(3.h),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      SizedBox(height: 2.1.h,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 18.h,
                          width: 93.w,
                          decoration: BoxDecoration(
                              // color: CupertinoColors.systemRed,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    color: CupertinoColors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Games2[index].image}",fit: BoxFit.fill,)),
                              ),
                              SizedBox(width: 3.w,),
                              Container(
                                height: 15.h,
                                width: 50.w,
                                //color: CupertinoColors.systemRed,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${ProviderTrue!.Games2[index].tital}",
                                        style: TextStyle(
                                          color: CupertinoColors.black,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${ProviderTrue!.Games2[index].subtital}",
                                        style: TextStyle(
                                          color: CupertinoColors.systemGrey,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "GET",
                                            style: TextStyle(
                                                color: CupertinoColors.activeBlue,
                                                fontSize: 14.sp,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "in-App\nPurchases",
                                            style: TextStyle(
                                                color: CupertinoColors.systemGrey,
                                                fontSize: 10.sp
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 18.h,
                          width: 93.w,
                          decoration: BoxDecoration(
                            // color: CupertinoColors.systemRed,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    color: CupertinoColors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Games3[index].image}",fit: BoxFit.fill,)),
                              ),
                              SizedBox(width: 3.w,),
                              Container(
                                height: 15.h,
                                width: 50.w,
                                //color: CupertinoColors.systemRed,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${ProviderTrue!.Games3[index].tital}",
                                        style: TextStyle(
                                            color: CupertinoColors.black,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${ProviderTrue!.Games3[index].subtital}",
                                        style: TextStyle(
                                            color: CupertinoColors.systemGrey,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "GET",
                                            style: TextStyle(
                                                color: CupertinoColors.activeBlue,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "in-App\nPurchases",
                                            style: TextStyle(
                                                color: CupertinoColors.systemGrey,
                                                fontSize: 10.sp
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
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
