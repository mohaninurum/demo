
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/choose_topic.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor:  const Color(0xff8E97FD),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          Align(alignment: Alignment.center, child: Image.asset("assets/img/Group 17.png")),
                Align(alignment: Alignment.center, child: Column(
                  children: [
                    Text("Hi Afsar, Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,color: Colors.white),),

                    Text("to Silent Moon",style: TextStyle(fontSize: 30.sp,color: Colors.white)
                    ),
                    Text("for smalls meditation ",style: TextStyle(fontSize: 13.sp,color: const Color(0xffA1A4B2))
                    )
                  ],)),
          Align(alignment: Alignment.center, child: Container(
            alignment: Alignment.center,
                    width:300.w,
              child: Text(
                "Explore the app, Find some peace of mind to prepare for meditation.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,color: Colors.white),))),
           SizedBox(height: 50.h,),
                Stack(
                  children: [
                    Image.asset("assets/img/Group 6853.png"),
                    Positioned(top:42.h,child: Image.asset("assets/img/Group (2).png")),
                     // Image.asset("assets/img/Ellipse 12.png")
                    Positioned(top:300.h,child: Image.asset("assets/img/Rectangle 211.png")),
                    Positioned(top:100.h,left: 300,right: 0, child: Image.asset("assets/img/Vector 3.png")),
                    Positioned(top:30.h,left: 230,right: 0, child: Image.asset("assets/img/Vector 5.png")),
                    Positioned(left: 0,right: 350.w, child: Image.asset("assets/img/Vector 4.png")),
                    Positioned(
                      left: 5.w,
                      bottom: 0,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseTopic()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white,),
                            width: 360.w,height: 50.h,
                            child:  const Text("GET STARTED",style: TextStyle(color: Colors.black),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


              ]),
        ),
      ),
    );
  }
}
