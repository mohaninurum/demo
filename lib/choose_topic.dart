import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/reminder_page.dart';
import 'package:mohan_new/welcome_page.dart';

class ChooseTopic extends StatelessWidget {
   ChooseTopic({super.key});
List<String> choosetopic=[
  "assets/choose/choose1.png",
  "assets/choose/choose1.png",
  "assets/choose/choose2.png",
  "assets/choose/choose2.png",
  "assets/choose/choose1.png",
  "assets/choose/choose2.png",
  "assets/choose/choose1.png",
  "assets/choose/choose1.png",
  "assets/choose/choose2.png",
  "assets/choose/choose1.png",
  "assets/choose/choose1.png",
  "assets/choose/choose2.png",
  "assets/choose/choose1.png",
  "assets/choose/choose2.png",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appBar: AppBar(),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(children: [

               Positioned(
                 left: 0,
                 right: 0,
                 top: 0,
                 bottom: 0,
                 child: Container(
                   decoration:   const BoxDecoration(
                     image: DecorationImage(image: AssetImage("assets/choose/Union.png"))
                   ),
                 ),
               ),
            Positioned(
              top: 20.h,
              left: 20.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What Brings you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp,color: Colors.black),),
                  Text("to Silent Moon?",style: TextStyle(fontSize: 20.sp,color: Colors.black)
                  ),
                  Text("choose a topic to focus on:",style: TextStyle(fontSize: 15.sp,color: const Color(0xffA1A4B2))
                  )
                ],),
            ),
            Positioned(
              left: 0,top: 120.h,right: 0,bottom: 0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ReminderPage()));
                },
                child: GridView.builder(
                  itemCount: choosetopic.length,
                  shrinkWrap: true,itemBuilder: (context, index) {
                  return   ClipRRect(
                    child: Image.asset(choosetopic[index]),
                  );
                },    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),


                  // child: ListView.builder(
                  //            shrinkWrap: true,
                  //   itemCount: choosetopic.length,
                  //     itemBuilder: (context, index){
                  //   return ClipRRect(
                  //     child: Image.asset("assets/img/Vector 4.png"),
                  //   );
                  // }),
                ),
              ),
            )

          ],),
        ),
      ),
    );
  }
}
