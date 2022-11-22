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
  
  SehirProvider? sehirProvider;
  final int sehirIndex = 0;
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
                  value.isLoading == false
                      ? Container(
                          width: double.infinity,
                          height: 5.h,
                          child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: DropdownButton(
                                value: value.deger,
                                items: value.response!.map((aa) {
                                  return DropdownMenuItem(
                                    value: aa!.ilAdi,
                                    child: Text(aa!.ilAdi.toString()),
                                  );
                                }).toList(),
                                onChanged: (deger) {
                                  print(value.indexBul(deger.toString()));
                                  value.sehirDegis(deger.toString());
                                },
                              )),
                        )
                      : Container(),
                  value.isLoading == false
                      ? Container(
                          margin: EdgeInsets.only(top: 3.h),
                          width: double.infinity,
                          height: 5.h,
                          child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: DropdownButton(
                                value: value.degerIlce,
                                items: value
                                    .response![value.secilenSehir].ilceler!
                                    .map((value) {
                                  return DropdownMenuItem(
                                    value: value.ilceAdi,
                                    child: Text(value.ilceAdi.toString()),
                                  );
                                }).toList(),
                                onChanged: (deger) {
                                  value.ilceDegis(deger.toString());
                                },
                              )),
                        )
                      : Container(),
                  SizedBox(
                    height: 4.h,
                  ),
                  SearchButton(gelenSehir: '${value.deger}', gelenIlce: '${value.degerIlce}',
                    
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
