import 'package:flutter/material.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';
import 'package:nobetci_eczane/service/api_service.dart';

class EczaneProvider with ChangeNotifier{
  EczaneList response = EczaneList();
  bool isLoading=false;

  getData(context,String sehir, String ilce) async{
    isLoading=true;
    response = (await getEczaneData(context, sehir, ilce))!;
    isLoading = false;
    notifyListeners();
  }
}