import 'dart:math';

import 'package:flutter/material.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AppViewPage extends StatefulWidget {
  const AppViewPage({Key? key}) : super(key: key);

  @override
  State<AppViewPage> createState() => _AppViewPageState();
}

class _AppViewPageState extends State<AppViewPage> {
  PlayStoreProvider? ProviderTrue;
  PlayStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<PlayStoreProvider>(context, listen: true);
    ProviderFalse = Provider.of<PlayStoreProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context, '/');
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,color: Colors.black,),
            ),
            PopupMenuButton(icon: Icon(Icons.more_vert,color: Colors.black,),itemBuilder: (context) {
              return [
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.share_sharp,color: Colors.black,),
                    SizedBox(width: 3 .w,),
                    Text("Share"),
                  ],
                ),),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.flag_outlined,color: Colors.black,),
                    SizedBox(width: 3.w,),
                    Text("Flag as inappropriate"),
                  ],
                ),),
                PopupMenuItem(child: Row(
                  children: [
                    Text("Enable auto-upadte"),
                    Checkbox(value: ProviderTrue!.value, onChanged: (value){
                      ProviderFalse!.ChaeckboxValue(value);
                    },activeColor: Colors.green.shade700),
                  ],
                ),),
              ];
            },)
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'AppIconView');
                  },
                  child: Hero(
                    tag: 'img',
                    child: Container(
                      height: 10.h,
                      width: 10.h,
                      margin: EdgeInsets.only(left: 6.w,top: 3.h),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3,
                              offset: Offset(0,0)
                          )
                        ],
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(5.w),child: Image.asset("${ProviderTrue!.p1!.image}"),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Column(
                    children: [
                      SizedBox(height: 3.5.h,),
                      Container(
                        height: 3.h,
                        width: 65.w,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${ProviderTrue!.p1!.name}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 65.w,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Noodlecake Studios inc",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 65.w,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Contains ads . In-app purchases",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.sp,
                          ),
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.2.h),
                  child: Container(
                    height: 10.h,
                    width: 35.w,
                    child: ListTile(
                      title: Text(
                        "${ProviderTrue!.p1!.rating} ⭐",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp
                        ),
                      ),
                      subtitle: Text(
                        "${ProviderTrue!.p1!.reviews} reviews",
                        style: TextStyle(
                            fontSize: 12.sp
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.2.h),
                  child: Container(
                    height: 10.h,
                    width: 30.w,
                    child: ListTile(
                      title: Text(
                        "${ProviderTrue!.p1!.download}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp
                        ),
                      ),
                      subtitle: Text(
                        "Downloads",
                        style: TextStyle(
                            fontSize: 12.sp
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.2.h),
                  child: Container(
                    height: 10.h,
                    width: 30.w,
                    child: ListTile(
                      title: Transform.rotate(
                        angle: -0.1,
                        child: Text(
                          "E",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 12.sp
                          ),
                        ),
                      ),
                      subtitle: Text(
                        "Everyone",
                        style: TextStyle(
                            fontSize: 12.sp
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 5.h,
              width: 90.w,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade700),
                child: Text("Install"),
              ),
            ),
            Container(
              height: 21.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                return Container(
                  height: 12.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  margin: EdgeInsets.only(left: 3.w,top: 3.h),
                  alignment: Alignment.center,
                  child: Image.asset("${ProviderTrue!.p1!.image}",fit: BoxFit.fill,),
                );
              },),
            ),
            ListTile(
              title: Text(
                "About this game",
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.3.w),
                child: Text(
                  "Discover the endless desert",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.6.h,right: 21.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Action",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 10.sp
                    ),
                  ),
                  Text(
                    "Editor;s choice",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 10.sp
                    ),
                  ),
                ],
              )
            ),
            ListTile(
              title: Row(
                children: [
                  Text(
                    "Ratings & reviews",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                  SizedBox(width: 3.w,),
                  Icon(Icons.info_outline,size: 21,)
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${ProviderTrue!.p1!.rating}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Container(
                    height: 12.h,
                    width: 30.h,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 2.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 1.h,
                                width: ProviderTrue!.p1!.r5!.w,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 2.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 1.h,
                                width: ProviderTrue!.p1!.r4!.w,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade700,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 2.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 1.h,
                                width: ProviderTrue!.p1!.r3!.w,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade700,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 2.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 1.h,
                                width: ProviderTrue!.p1!.r2!.w,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade700,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 2.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Container(
                                height: 1.h,
                                width: ProviderTrue!.p1!.r1!.w,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade700,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
