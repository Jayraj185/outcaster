import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class UpadatePage extends StatefulWidget {
  const UpadatePage({Key? key}) : super(key: key);

  @override
  State<UpadatePage> createState() => _UpadatePageState();
}

class _UpadatePageState extends State<UpadatePage> {
  iosAppStoreProvider? ProviderTrue;
  iosAppStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosAppStoreProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosAppStoreProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.white,
          middle: Text("Updates",style: TextStyle(color: CupertinoColors.black),),
        ),
        child: ListView.builder(
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: ProviderTrue!.Updates.length,
            itemBuilder: (context, index) {
              return Container(
                height: 20.h,
                margin: EdgeInsets.all(5),
                //color: CupertinoColors.systemRed,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 12.h,
                            width: 12.h,
                            decoration: BoxDecoration(
                              color: CupertinoColors.black,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("${ProviderTrue!.Updates[index].image}"),),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Container(
                          height: 12.h,
                          width: 50.w,
                          //color: CupertinoColors.systemBlue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "${ProviderTrue!.Updates[index].tital}",
                                  style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontSize: 15.sp
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "${ProviderTrue!.Updates[index].subtital}",
                                  style: TextStyle(
                                      color: CupertinoColors.systemGrey,
                                      fontSize: 12.sp
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 12.h,
                          width: 18.w,
                          alignment: Alignment.center,
                          //color: CupertinoColors.systemOrange,
                          child: Text("OPEN",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 86.5.w,
                        child: Text(
                          "${ProviderTrue!.Updates[index].about}",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 13.5.sp,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.visible
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1,)
                  ],
                ),
              );
            },
        ),
      ),
    );
  }
}
