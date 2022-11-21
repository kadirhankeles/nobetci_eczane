import 'package:flutter/material.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';
import 'package:nobetci_eczane/service/api_service.dart';

import '../model/sehir_liste.dart';

class SehirProvider with ChangeNotifier{
  List<SehirListe> ?response;
  bool isLoading=false;
    String deger = "Adana";
    String degerIlce="Merkez";


  getData(context) async{
    isLoading=true;
    response = (await getSehirData(context))!;
    isLoading = false;
    notifyListeners();
  }

  sehirDegis(String sehir){
    deger=sehir;
    notifyListeners();
  }

  ilceDegis(String ilce){
degerIlce=ilce;
notifyListeners();
  }
}