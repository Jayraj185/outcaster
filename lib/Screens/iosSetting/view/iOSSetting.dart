import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Screens/iosSetting/provider/iosProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class iOSSetting extends StatefulWidget {
  const iOSSetting({Key? key}) : super(key: key);

  @override
  State<iOSSetting> createState() => _iOSSettingState();
}

class _iOSSettingState extends State<iOSSetting> {
  iosProvider? ProviderTrue;
  iosProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            padding: EdgeInsetsDirectional.only(start: 0.h),
            leading: CupertinoButton(
              child: Icon(CupertinoIcons.back,color: CupertinoColors.white,),
              onPressed: (){
                Navigator.pop(context,'/');
              },
            ),
            backgroundColor: CupertinoColors.destructiveRed,
            middle: Text("Setting UI",style: TextStyle(color: CupertinoColors.white),),
          ),
          child: ListView(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,bottom: 10),
                  child: Text(
                    "Common",
                    style: TextStyle(
                      color: CupertinoColors.systemGrey,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.globe,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Language",
                    ),
                    SizedBox(width: 144,),
                    Text(
                      "English",
                      style: TextStyle(
                          color: CupertinoColors.systemGrey
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.cloud,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Environment",
                    ),
                    SizedBox(width: 100,),
                    Text(
                      "Production",
                      style: TextStyle(
                          color: CupertinoColors.systemGrey
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,bottom: 10),
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.phone_solid,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Phone Number",
                    ),
                    SizedBox(width: 175,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.mail_solid,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Email",
                    ),
                    SizedBox(width: 243,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.square_arrow_right,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Sign out",
                    ),
                    SizedBox(width: 224,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,bottom: 10),
                  child: Text(
                    "Security",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Icon(Icons.security_update,color: CupertinoColors.systemGrey,size: 30,),
                    ),
                    SizedBox(width: 21,),
                    Text(
                      "Lock app in background",
                    ),
                    SizedBox(width: 74,),
                    CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                        value: ProviderTrue!.swich, onChanged: (value){
                      ProviderFalse!.Change(value);
                    }),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Icon(Icons.fingerprint,color: CupertinoColors.systemGrey,size: 30,),
                    ),
                    SizedBox(width: 21,),
                    Text(
                      "Use fingerprint",
                    ),
                    SizedBox(width: 140,),
                    CupertinoSwitch(
                        activeColor: CupertinoColors.systemRed,
                        value: ProviderTrue!.swich2, onChanged: (value){
                      ProviderFalse!.Change2(value);
                    }),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Icon(CupertinoIcons.padlock_solid,color: CupertinoColors.systemGrey,size: 30,),
                    ),
                    SizedBox(width: 21,),
                    Text(
                      "Chnage Password",
                    ),
                    SizedBox(width: 115,),
                    CupertinoSwitch(
                        activeColor: CupertinoColors.systemRed,
                        value: ProviderTrue!.swich3, onChanged: (value){
                      ProviderFalse!.Change3(value);
                    }),
                  ],
                ),
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,bottom: 10),
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.doc_text_fill,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Terms of Service",
                    ),
                    SizedBox(width: 156,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18,right: 15),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.square_fill_on_square_fill,color: CupertinoColors.systemGrey,size: 30,),
                    SizedBox(width: 21,),
                    Text(
                      "Open source licenses",
                    ),
                    SizedBox(width: 122,),
                    Icon(CupertinoIcons.right_chevron,size: 18,color: CupertinoColors.systemGrey,),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
// Container(
//   width:300,
//   child: CupertinoListTile(
//     leading: Container(
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(
//           color: CupertinoColors.systemOrange,
//           borderRadius: BorderRadius.circular(10)
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(left: 3),
//         child: Icon(CupertinoIcons.airplane,color: CupertinoColors.white,),
//       ),
//     ),
//     title: Text(
//       "Airplane Mode",
//     ),
//     trailing: CupertinoSwitch(value: false, onChanged: (value){}),
//   ),
// ),
