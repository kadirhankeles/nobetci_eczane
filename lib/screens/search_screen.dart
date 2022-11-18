import 'package:flutter/material.dart';
import 'package:nobetci_eczane/core/constant.dart';
import 'package:nobetci_eczane/widgets/search_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  final sehirCon = new TextEditingController();
  final ilceCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: AppConstant.containerMargin,
        height: 50.h,
        width: double.infinity,
       
        child: Padding(
          padding:  EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Filtreleme", style: AppConstant.titleStyle,),
              SizedBox(height: 6.h,),
              Container(
                width: double.infinity,
                height: 5.h,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    controller: sehirCon,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 1.5.h),
                      border: OutlineInputBorder(),
                      labelText: 'Şehir',
                    ),
              ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.h),
                width: double.infinity,
                height: 5.h,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    controller: ilceCon,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 1.5.h),
                      border: OutlineInputBorder(),
                      labelText: 'İlçe',
                    ),
              ),
                ),
              ),
              SizedBox(height: 4.h,),
              SearchButton(sehirCon: sehirCon, ilceCon: ilceCon,),
            ],
          ),
        ),
      ),
    );
  }
}