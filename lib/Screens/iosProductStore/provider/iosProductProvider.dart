import 'package:flutter/cupertino.dart';
import 'package:outcaster/Screens/iosProductStore/modal/iosProductModal.dart';
import 'package:outcaster/Screens/iosProductStore/view/iosCartPage.dart';
import 'package:outcaster/Screens/iosProductStore/view/iosProductPage.dart';
import 'package:outcaster/Screens/iosProductStore/view/iosSearchPage.dart';

class iosProductProvider extends ChangeNotifier
{
  List<iosProductModal> productList = [
    iosProductModal(name: "Vagabond sack",price: "12",image: "assets/image/sack.jpg"),
    iosProductModal(name: "Stella sunglasses",price: "15",image: "assets/image/sunglasses.png"),
    iosProductModal(name: "Whitney belt",price: "5",image: "assets/image/belt.jpg"),
    iosProductModal(name: "Garden strand",price: "3",image: "assets/image/garden.jpg"),
    iosProductModal(name: "Strut earrings",price: "12",image: "assets/image/earrings.jpg"),
    iosProductModal(name: "Varsity socks",price: "5",image: "assets/image/sock.png"),
    iosProductModal(name: "Sunshirt dress",price: "15",image: "assets/image/dress.jpg"),
    iosProductModal(name: "Chambray shirt",price: "12",image: "assets/image/shirt.jpg"),
    iosProductModal(name: "Weave keyring",price: "3",image: "assets/image/keyring.jpg"),
    iosProductModal(name: "White pinstripe shirt",price: "15",image: "assets/image/whiteshirt.jpeg"),
    iosProductModal(name: "Surf and perf shirt",price: "8",image: "assets/image/surfshirt.jpg"),
    iosProductModal(name: "Pent",price: "15",image: "assets/image/pent.jpg"),
    iosProductModal(name: "Shoes",price: "12",image: "assets/image/shoes.jpg"),
    iosProductModal(name: "Fancy Belt",price: "8",image: "assets/image/fanchybelt.png"),
    iosProductModal(name: "Bag",price: "9",image: "assets/image/bag.jpg"),
  ];
  List Screens = [
    iosProductPage(),
    iosSearchPage(),
    iosCartPage(),
  ];
  DateTime time = DateTime.now();
  String? month;
  List<iosProductModal> userproductList = [];
  double total=0;
  double shopping=0;
  double tax=0;
  GlobalKey<FormState> key = GlobalKey<FormState>();

  void AddToCart(iosProductModal i1)
  {
    userproductList.add(i1);
    notifyListeners();
  }
  void Total(index)
  {
    shopping=0;
    print(userproductList.length);
    //shopping=shopping + double.parse("${userproductList[index].price}") as double;
    for(int i=0; i<userproductList.length; i++)
      {
        shopping=shopping + double.parse("${userproductList[i].price}") as double;
      }

    if(shopping<10)
    {
      tax=6.16;
    }
    else if(shopping<50)
      {
        tax=9.32;
      }
    else if(shopping<100)
      {
        tax=12.32;
      }
    else if(shopping<500)
      {
        tax=15.32;
      }
    else if (shopping < 1000)
      {
        tax=18.32;
      }
    else if (shopping < 5000)
      {
        tax=21.32;
      }
    else if (shopping < 10000)
      {
        tax=24.32;
      }
    else if (shopping < 50000)
      {
        tax=27.32;
      }
    else
      {
        tax=30;
      }
    total=shopping*(tax/100);
    total=shopping*total;
    // notifyListeners();
  }
  void Datepicker(DateTime date)
  {
    time=date;
    switch(time.month)
    {
      case 1:
        {
          month="Jan";
          break;
        }
      case 2:
        {
          month="Feb";
          break;
        }
      case 3:
        {
          month="Mar";
          break;
        }
      case 4:
        {
          month="Apr";
          break;
        }
      case 5:
        {
          month="May";
          break;
        }
      case 6:
        {
          month="Jun";
          break;
        }
      case 7:
        {
          month="Jul";
          break;
        }
      case 8:
        {
          month="Aug";
          break;
        }
      case 9:
        {
          month="Sep";
          break;
        }
      case 10:
        {
          month="Oct";
          break;
        }
      case 11:
        {
          month="Nov";
          break;
        }
      case 12:
        {
          month="Dec";
          break;
        }
    }
    notifyListeners();
  }
}