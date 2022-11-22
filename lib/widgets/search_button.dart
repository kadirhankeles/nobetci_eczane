import 'package:flutter/material.dart';
import 'package:nobetci_eczane/core/constant.dart';
import 'package:nobetci_eczane/screens/home_screen.dart';
import 'package:nobetci_eczane/screens/search_screen.dart';

class SearchButton extends StatefulWidget {
  final String gelenSehir;
  final String gelenIlce;
   SearchButton( {super.key, required this.gelenSehir, required this.gelenIlce,});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  late String sehir;

  late String ilce;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: AppConstant.searchButton,
        onPressed: () {
         
           sehir = widget.gelenSehir;
           ilce = widget.gelenIlce;
           
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(sehir: sehir, ilce: ilce,),));
      }, child: Text("ARA")),
    );
  }
}