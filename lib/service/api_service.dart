import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';

Future<EczaneList?> getEczaneData(context) async{
  EczaneList eczaneResponsive;
  try{
    final response = await Dio().get("https://api.collectapi.com/health/dutyPharmacy?ilce=Çankaya&il=Ankara", queryParameters: {
      'authorization': 'apikey 5vEljyf234nyUVCcLB853n:12ifu3NTORioUSLiBrxZa2',
      'content-type': 'application/json'
    });
    eczaneResponsive = EczaneList.fromJson(response.data);
    print(response.data+'********');
    return eczaneResponsive;
  }catch(e){
    log(e.toString());
  }return null;
}