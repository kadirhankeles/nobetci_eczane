import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EczaneCard extends StatelessWidget {
  final String eczaneAdi;
  final String eczaneSemt;
  final String eczaneAdres;
  const EczaneCard({super.key, required this.eczaneAdi, required this.eczaneSemt, required this.eczaneAdres});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(bottom: 1.6.h),
      child: Padding(
        padding:  EdgeInsets.only(bottom: 1.h, top: 1.h),
        child: ListTile(
                
                leading: Icon(Icons.add, size: 38, color: Colors.red,),
                title: Text('$eczaneAdi'+" Eczanesi"),
                subtitle: Text('$eczaneAdres'),
              ),
      ),
    );
  }
}