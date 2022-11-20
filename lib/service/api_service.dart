import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';
import 'package:nobetci_eczane/model/eczaneList.dart';

Future<EczaneList?> getEczaneData(context) async{
  Map<String, String> requestHeaders = {
       'authorization': 'apikey 5vEljyf234nyUVCcLB853n:12ifu3NTORioUSLiBrxZa2',
       'Content-type': 'application/json',
       
     };
  EczaneList eczaneResponse;
  try{
    final response =await http.get(Uri.parse
    ("https://api.collectapi.com/health/dutyPharmacy?ilce=Çankaya&il=Ankara"), headers: requestHeaders);
    eczaneResponse = EczaneList.fromJson(jsonDecode(response.body));
    
    print(response.body);
    return eczaneResponse;
  }catch(e){
    log(e.toString());
  }return null;
}