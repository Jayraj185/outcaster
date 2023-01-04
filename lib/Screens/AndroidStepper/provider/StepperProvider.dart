import 'dart:async';

import 'package:flutter/cupertino.dart';

class StepperProvider extends ChangeNotifier
{

  int StepperIndex=0;
  TextEditingController txtFN = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtCPass = TextEditingController();
  TextEditingController txtUN = TextEditingController();
  TextEditingController txtUPass = TextEditingController();
  GlobalKey<FormState> validatorkey = GlobalKey<FormState>();
  GlobalKey<FormState> validatorkey2 = GlobalKey<FormState>();
  String? fn,pass,un,upass;

  void splash(BuildContext context)
  {
    Timer(Duration(seconds: 3), () {
      print("yes");
      Navigator.pushReplacementNamed(context, 'AndroidStepper');
    });
  }

  void changedata()
  {
    fn=txtFN.text;
    pass=txtPass.text;
    un=txtUN.text;
    upass=txtUPass.text;
    notifyListeners();
  }
  void onContinue()
  {
    if(StepperIndex<=2)
      {
        StepperIndex++;
      }
    notifyListeners();
  }
  void onCancel()
  {
    if(StepperIndex>0)
      {
        StepperIndex--;
      }
    notifyListeners();
  }
  void onTapped(index)
  {
    StepperIndex=index;
    notifyListeners();
  }
  void Restart()
  {
    txtFN.clear();
    txtEmail.clear();
    txtPass.clear();
    txtCPass.clear();
    txtUN.clear();
    txtUPass.clear();
    StepperIndex=0;
    notifyListeners();
  }
}