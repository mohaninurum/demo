import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/widgets/button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'LoginPage.dart';
import 'widgets/lastText_widget.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
          
            children: [
                 Stack(
                   children: [
                     Image.asset("assets/img/Vector.png"),
                     Positioned(top: 50,left: 25, child: Image.asset("assets/img/Group.png")),
                     Align(alignment: Alignment.center, child: Image.asset("assets/img/Group 17.png")),
                     Positioned(top: 420,left: 17, child: Image.asset("assets/img/line.png")),
                   ],
                 ),
             Align(alignment: Alignment.center, child: Column(
              children: [
                 Text("We are what we do",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp),),
          
                Text("Thousand of people are usign silent moon",style: TextStyle(fontSize: 13.sp,color: Color(0xffA1A4B2))
                ),
                Text("for smalls meditation ",style: TextStyle(fontSize: 13.sp,color: Color(0xffA1A4B2))
                )
              ],)),
               SizedBox(
                height: 20.h,
              ),

              ButtonWidget("SIGN UP", (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage(),));
              }),
          SizedBox(
          height: 15.h,
                ),
          LastTextWidget("ALREADY HAVE AN ACCOUNT","LOG IN",(){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage(),));
          })
          
          ],),
        ),
      ),
    );
  }
}
