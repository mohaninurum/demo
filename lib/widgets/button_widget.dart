
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ButtonWidget extends StatelessWidget {

  String Name;
  VoidCallback onTap;

   ButtonWidget(this.Name, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return          InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xff8E97FD),),
        width: 360.w,height: 47.h,
        child:  Text(Name,style: const TextStyle(color: Color(0xffF6F1FB)),),
      ),
    );
  }
}
