import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class iosSearchPage extends StatefulWidget {
  const iosSearchPage({Key? key}) : super(key: key);

  @override
  State<iosSearchPage> createState() => _iosSearchPageState();
}

class _iosSearchPageState extends State<iosSearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        // navigationBar: CupertinoNavigationBar(
        //   middle: Container(
        //     height: 5.h,
        //     color: CupertinoColors.systemGrey4,
        //   ),
        //   border: Border(),
        //   backgroundColor: CupertinoColors.white,
        // ),
        backgroundColor: CupertinoColors.white,
        child: Container(
          height: 6.h,
          decoration: BoxDecoration(
            color: CupertinoColors.systemGrey4,
            borderRadius: BorderRadius.circular(15)
          ),
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w),
          child: Row(
            children: [
              SizedBox(width: 3.w,),
              Icon(CupertinoIcons.search,color: CupertinoColors.systemGrey,size: 25,),
              SizedBox(width: 1.w,),
              Container(
                height: 5.h,
                  width: 64.5.w,
                  margin: EdgeInsets.only(top: 1.h),
                  //color: CupertinoColors.systemGrey4,
                  child: CupertinoTextField(
                    decoration: BoxDecoration()
                  )
              ),
              SizedBox(width: 4.5.w,),
              Container(
                  height: 6.h,
                  width: 6.h,
                  child: CupertinoButton(child: Icon(CupertinoIcons.clear_circled_solid,color: CupertinoColors.systemGrey,size: 25,), onPressed: (){}),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
