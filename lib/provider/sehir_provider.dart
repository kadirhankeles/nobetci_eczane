import 'package:flutter/material.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';
import 'package:nobetci_eczane/service/api_service.dart';

import '../model/sehir_liste.dart';

class SehirProvider with ChangeNotifier{
  List<SehirListe> ?response;
  bool isLoading=false;
    String deger = "Adana";
    String degerIlce="Aladağ";
    int secilenSehir=0;


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

 indexBul(String deger){
    for(int i=0;i<response!.length;i++)
    {
           if(response![i].ilAdi==deger)
           {
             secilenSehir=i;
             degerIlce=response![i].ilceler![0].ilceAdi!;
             print(degerIlce);
             notifyListeners();
           }

    }
  }
 
}