import 'package:flutter/material.dart';
import 'package:nobetci_eczane/core/constant.dart';
import 'package:nobetci_eczane/screens/home_screen.dart';
import 'package:nobetci_eczane/screens/search_screen.dart';

class SearchButton extends StatefulWidget {
  final TextEditingController sehirCon;
  final TextEditingController ilceCon;
   SearchButton( {super.key, required this.sehirCon, required this.ilceCon});

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
         
           sehir = widget.sehirCon.text;
           ilce = widget.ilceCon.text;
           print("${widget.sehirCon.text}");
           print("${widget.ilceCon.text}");
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
      }, child: Text("ARA")),
    );
  }
}