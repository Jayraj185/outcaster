import 'dart:async';

import 'package:flutter/material.dart';
import 'package:outcaster/Screens/AndroidStepper/provider/StepperProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Provider.of<StepperProvider>(context,listen: false).splash(context);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 18.h,
                width: 18.h,
                child: FlutterLogo(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.only(bottom: 15.h,left: 1.w),
                child: Text(
                  "From",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.only(bottom: 12.h),
                child: Text(
                  "Jayraj",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
