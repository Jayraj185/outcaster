import 'package:flutter/material.dart';
import 'package:outcaster/Screens/AndroidStepper/provider/StepperProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AndroidStepper extends StatefulWidget {
  const AndroidStepper({Key? key}) : super(key: key);

  @override
  State<AndroidStepper> createState() => _AndroidStepperState();
}

class _AndroidStepperState extends State<AndroidStepper> {
  StepperProvider? ProviderTrue;
  StepperProvider? ProviderFalse;

  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<StepperProvider>(context, listen: true);
    ProviderFalse = Provider.of<StepperProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Android Stepper App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(primary: Colors.red)),
              child: Stepper(
                // onStepTapped: (index) {
                //   ProviderTrue!.onTapped(index);
                // },
                controlsBuilder: (context, details) {
                  return ProviderTrue!.StepperIndex < 2
                      ? Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  if (ProviderTrue!.StepperIndex == 0) {
                                    if (ProviderTrue!.validatorkey.currentState!
                                        .validate()) {
                                      print("tap");
                                      ProviderFalse!.onContinue();
                                    }
                                  } else if (ProviderTrue!.StepperIndex == 1) {
                                    if (ProviderTrue!
                                        .validatorkey2.currentState!
                                        .validate()) {
                                      print("tap2");
                                      ProviderFalse!.onContinue();
                                    }
                                  }
                                },
                                child: Text("Continue")),
                            SizedBox(
                              width: 6.w,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                ProviderFalse!.onCancel();
                              },
                              child: Text("Cancel"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  ProviderFalse!.Restart();
                                },
                                child: Text("Restart")),
                            SizedBox(
                              width: 6.w,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                ProviderFalse!.onCancel();
                              },
                              child: Text("Cancel"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12),
                            ),
                          ],
                        );
                },
                currentStep: ProviderTrue!.StepperIndex,
                steps: [
                  Step(
                      isActive: ProviderTrue!.StepperIndex >= 0,
                      state: ProviderTrue!.StepperIndex > 0
                          ? StepState.complete
                          : StepState.indexed,
                      title: Text("SighUp"),
                      content: Form(
                        key: ProviderTrue!.validatorkey,
                        child: Column(
                          children: [
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtFN,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline,
                                    size: 30,
                                  ),
                                  hintText: "Full Name*",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Full Name";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtEmail,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 30,
                                  ),
                                  hintText: "Email-Id",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Email";
                                  } else if (!RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                    return "Please Enter Valid Email";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtPass,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                  ),
                                  hintText: "Password*",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Password";
                                  } else if (value.length != 6) {
                                    return "Please Enter Maximum 6 Letter";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtCPass,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                  ),
                                  hintText: "Confirm Password*",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Confirm Password";
                                  } else if (value.length != 6) {
                                    return "Please Enter Maximum 6 Letter";
                                  } else if (ProviderTrue!.txtPass.text !=
                                      ProviderTrue!.txtCPass.text) {
                                    return "Please Enter Current Confirm Password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                  Step(
                      isActive: ProviderTrue!.StepperIndex >= 1,
                      state: ProviderTrue!.StepperIndex > 1
                          ? StepState.complete
                          : StepState.indexed,
                      title: Text("LogIn"),
                      content: Form(
                        key: ProviderTrue!.validatorkey2,
                        child: Column(
                          children: [
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtUN,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline,
                                    size: 30,
                                  ),
                                  hintText: "User Name*",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your User Name";
                                  } else if (ProviderTrue!.txtFN.text !=
                                      ProviderTrue!.txtUN.text) {
                                    return "Please Enter Valid User Name";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              height: 10.h,
                              width: 60.w,
                              child: TextFormField(
                                controller: ProviderTrue!.txtUPass,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                  ),
                                  hintText: "Password*",
                                  hintStyle: TextStyle(fontSize: 15.sp),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Password";
                                  } else if (value.length != 6) {
                                    return "Please Enter Maximum 6 Letter";
                                  } else if (ProviderTrue!.txtPass.text !=
                                      ProviderTrue!.txtUPass.text) {
                                    return "Please Enter Valid Password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                  Step(
                    state: ProviderTrue!.StepperIndex > 1
                        ? StepState.complete
                        : StepState.indexed,
                    isActive: ProviderTrue!.StepperIndex >= 2,
                    title: Text("Home"),
                    content: Container(
                      height: 12.h,
                      width: 70.w,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Welcome To Stepper App",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 15.sp),
                              )),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "User Name : ${ProviderTrue!.txtFN.text}",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.sp),
                              )),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Email : ${ProviderTrue!.txtEmail.text}",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.sp),
                              )),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password : ${ProviderTrue!.txtUPass.text}",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.sp),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
