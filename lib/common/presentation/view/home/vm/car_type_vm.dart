


import 'package:get/get.dart';

class CarTypeVM extends GetxController{

  int selectedIndex = 0;
  bool isLoading = false;



  void getCarsData()async{
    isLoading = true;
    await  Future.delayed(const Duration(seconds: 1));
    isLoading = false;
    update();
  }


  void setSelectedIndex({required int index}){
    selectedIndex = index;
    getCarsData();
    update();
  }
}