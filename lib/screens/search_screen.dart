import 'package:flutter/material.dart';
import 'package:nobetci_eczane/core/constant.dart';
import 'package:nobetci_eczane/model/sehir_liste.dart';
import 'package:nobetci_eczane/widgets/search_button.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../provider/sehir_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final sehirCon = new TextEditingController();
  final ilceCon = new TextEditingController();
  SehirProvider? sehirProvider;
  @override
  void initState() {
    // TODO: implement initState

    sehirProvider = Provider.of<SehirProvider>(context, listen: false);
    sehirProvider?.getData(context);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, SehirProvider value, child) {
          

          return Container(
            margin: AppConstant.containerMargin,
            height: 50.h,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Filtreleme",
                    style: AppConstant.titleStyle,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  value.isLoading==false?
                  Container(
                    width: double.infinity,
                    height: 5.h,
                    child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: DropdownButton(
                          value: value.deger,
                          items:value.response!.map((value) {
                            return DropdownMenuItem(
                              value: value!.ilAdi,
                              child: Text(value!.ilAdi.toString()),
                            );
                          }).toList(),
                          onChanged: (deger) {
                            value.sehirDegis(deger.toString());
                          },
                        )),
                  ):Container(),
                  Container(
                    margin: EdgeInsets.only(top: 3.h),
                    width: double.infinity,
                    height: 5.h,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: DropdownButton(
                          value: value.degerIlce,
                          items:value.response![2].ilceler!.map((value) {
                            return DropdownMenuItem(
                              value: value.ilceAdi,
                              child: Text(value.ilceAdi.toString()),
                            );
                          }).toList(),
                          onChanged: (deger) {
                            value.ilceDegis(deger.toString());
                          },
                        )
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SearchButton(
                    sehirCon: sehirCon,
                    ilceCon: ilceCon,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
