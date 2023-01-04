import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Screens/Allapps/All_AppsForAndroid.dart';
import 'package:outcaster/Screens/iosProductStore/provider/iosProductProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class iosCartPage extends StatefulWidget {
  const iosCartPage({Key? key}) : super(key: key);

  @override
  State<iosCartPage> createState() => _iosCartPageState();
}

class _iosCartPageState extends State<iosCartPage> {
  iosProductProvider? ProviderTrue;
  iosProductProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosProductProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosProductProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Text(""),
          border: Border(),
          backgroundColor: CupertinoColors.white,
        ),
        backgroundColor: CupertinoColors.white,
        child: Form(
          key: ProviderTrue!.key,
          child: ListView(
            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.w,),
                child: Text(
                  "Shopping Cart",
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ),
              //SizedBox(height: 0.5.h,),
              Container(
                height: 7.5.h,
                child: CupertinoTextFormFieldRow(
                  keyboardType: TextInputType.name,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                  ),
                  placeholder: "Name",
                  prefix: Icon(CupertinoIcons.person_fill,color: CupertinoColors.systemGrey3,),
                  validator: (value){
                    if(value!.isEmpty)
                      {
                        return "Please Enter Your Name";
                      }
                    else
                      {
                        return null;
                      }
                  },
                ),
              ),
              //SizedBox(height: 0.5.h,),
              Container(
                height: 7.5.h,
                //color: CupertinoColors.systemRed,
                child: CupertinoTextFormFieldRow(
                  keyboardType: TextInputType.phone,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                  ),
                  placeholder: "Number",
                  prefix: Icon(CupertinoIcons.phone_solid,color: CupertinoColors.systemGrey3,),
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Please Enter Your Number";
                    }
                    else if(value.length !=10)
                      {
                        return "Please Enter Your valid Number";
                      }
                    else
                    {
                      return null;
                    }
                  },
                ),
              ),
              //SizedBox(height: 0.5.h,),
              Container(
                height: 7.5.h,
                child: CupertinoTextFormFieldRow(
                  keyboardType: TextInputType.emailAddress,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                  ),
                  placeholder: "Email",
                  prefix: Icon(CupertinoIcons.mail_solid,color: CupertinoColors.systemGrey3,),
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Please Enter Your Email";
                    }
                    else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return "Please Enter Your Valid Email";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
              ),
              //SizedBox(height: 0.5.h,),
              Container(
                height: 7.5.h,
                child: CupertinoTextFormFieldRow(
                  keyboardType: TextInputType.streetAddress,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))
                  ),
                  placeholder: "Location",
                  prefix: Icon(CupertinoIcons.location_solid,color: CupertinoColors.systemGrey3,),
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Please Enter Your Location";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 0.5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Delivery time",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      color: CupertinoColors.systemGrey3,
                      decoration: TextDecoration.none
                    ),
                  ),
                  Text(
                    "${ProviderTrue!.month} ${ProviderTrue!.time.day}, ${ProviderTrue!.time.year} ${ProviderTrue!.time.hour}:${ProviderTrue!.time.minute} ${ProviderTrue!.time.hour>=12?"PM":"AM"}",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: CupertinoColors.systemGrey,
                      decoration: TextDecoration.none
                    ),
                  )
                ],
              ),
              SizedBox(height: 1.5.h,),
              Container(
                height: 21.h,
                //color: CupertinoColors.systemRed,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (value) {
                    ProviderFalse!.Datepicker(value);
                  },
                ),
              ),
              Container(
                height: 28.h,
                //color: CupertinoColors.activeBlue,
                child: ListView.builder(
                  physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                  itemCount: ProviderTrue!.userproductList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 9.h,
                        width: MediaQuery.of(context).size.width,
                        //color: CupertinoColors.systemRed,
                        margin: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            SizedBox(width: 3.w,),
                            Container(
                              height: 7.h,
                              width: 7.h,
                              decoration: BoxDecoration(
                                  color: CupertinoColors.black,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset("${ProviderTrue!.userproductList[index].image}",fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Container(
                              height: 12.h,
                              width: 53.w,
                              //color: CupertinoColors.systemOrange,
                              //alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  SizedBox(height: 2.6.h,),
                                  Align(alignment: Alignment.centerLeft,child: Text("${ProviderTrue!.userproductList[index].name}",style: TextStyle(fontWeight: FontWeight.w600,color: CupertinoColors.black,fontSize: 12.sp,decoration: TextDecoration.none),)),
                                  SizedBox(height: 1.h,),
                                  Align(alignment: Alignment.centerLeft,child: Text("\$${ProviderTrue!.userproductList[index].price}",style: TextStyle(fontWeight: FontWeight.w300,color: CupertinoColors.systemGrey,fontSize: 10.sp,decoration: TextDecoration.none),)),
                                ],
                              ),
                            ),

                          ],
                        ),
                      );
                    },
                ),
              ),
              SizedBox(height: 1.h,),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:  EdgeInsets.only(right: 3.w),
                  child: Text(
                    "Shopping  \$${ProviderTrue!.shopping}",
                    style: TextStyle(
                      color: CupertinoColors.systemGrey3,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h,),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:  EdgeInsets.only(right: 3.w),
                  child: Text(
                    "Tax  \$${ProviderTrue!.tax}",
                    style: TextStyle(
                      color: CupertinoColors.systemGrey3,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(child: Text("Purchase"), onPressed: (){
                    if(ProviderTrue!.key.currentState!.validate())
                      {
                        if(ProviderTrue!.userproductList.isEmpty)
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Add Your Product")));
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Purchase Successfully")));
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AllApps(),));
                            ProviderFalse!.userproductList.clear();
                            ProviderFalse!.shopping=0;
                            ProviderFalse!.total=0;
                            ProviderFalse!.tax=0;
                          }
                      }
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Add Your Data")));
                      }
                  }),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(right: 3.w),
                      child: Text(
                        "Total  \$${ProviderTrue!.total.toStringAsFixed(2)}",
                        style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 15.sp,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
