import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';
import 'package:nobetci_eczane/model/sehir_liste.dart';

Future<EczaneList?> getEczaneData(context, String sehir, String ilce) async{
  Map<String, String> requestHeaders = {
      // 'authorization': 'apikey 5vEljyf234nyUVCcLB853n:12ifu3NTORioUSLiBrxZa2',
       'Content-type': 'application/json',
       
     };
  EczaneList eczaneResponse;
  Dio dio = Dio(BaseOptions(baseUrl: "https://api.collectapi.com/"));
  try{
   /* final response =await http.get(Uri.parse
    ("https://api.collectapi.com/health/dutyPharmacy?ilce=Çankaya&il=Ankara"), headers: requestHeaders);
    eczaneResponse = EczaneList.fromJson(jsonDecode(response.body));*/
    
    final response = await dio.get("health/dutyPharmacy",queryParameters: {
      'ilce':'$ilce',
      'il':'$sehir',
    }, options: Options(headers: requestHeaders) );
       eczaneResponse = EczaneList.fromJson((response.data));
    print(response.data);
    return eczaneResponse;
  }catch(e){
    log(e.toString());
  }return null;
}


getSehirData (context) async {
  try {
      var dummyData = await rootBundle.loadString("assets/sehir_liste.json");
   List<dynamic> aa=   json.decode(dummyData)["data"];
   

  List<SehirListe> sehirList = aa.map((user) =>   SehirListe.fromJson(user)).toList();
    return sehirList;
  } catch (e) {
    
  }
}