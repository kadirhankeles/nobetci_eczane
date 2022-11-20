import 'package:flutter/material.dart';
import 'package:nobetci_eczane/core/constant.dart';
import 'package:nobetci_eczane/widgets/eczane_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../provider/eczane_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  EczaneProvider? eczProvider;
  @override
  void initState() {
    // TODO: implement initState
    eczProvider = Provider.of<EczaneProvider>(context, listen: false);
    eczProvider?.getData(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Text(
            "Nöbetçi Eczaneler",
            style: AppConstant.barTitleStyle,
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(1.5.h),
          child: Consumer(
            builder: (context, EczaneProvider value, child) {
              return Container(
              height: 100.h,
              width: double.infinity,
              child: value.isLoading ? ListView.builder(
                itemCount: value.response.result?.length,
                itemBuilder: (context, index) {
                  return EczaneCard(
                    eczaneAdi: '${value.response.result?[index].name} Eczanesi',
                    eczaneSemt: '${value.response.result?[index].dist}',
                    eczaneAdres:
                        '${value.response.result?[index].address}',
                        
                  );
                },
              ): null,
            );
            }, 
          )),
    );
  }
}
