import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LastTextWidget extends StatelessWidget {
  String fname;
  String sname;
  VoidCallback ontab;
   LastTextWidget( this.fname,this.sname,this.ontab, {super.key});

  @override
  Widget build(BuildContext context) {
    return        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(fname,style: TextStyle(fontSize: 12.sp,color: Color(0xffA1A4B2))),
        SizedBox(width: 5.w,),
        InkWell(onTap: ontab, child: Text(sname,style: TextStyle(fontSize: 12.sp,color: Color(0xff8E97FD)))),

      ],
    );
  }
}
