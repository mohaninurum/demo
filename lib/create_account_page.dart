import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/LoginPage.dart';
import 'package:mohan_new/welcome_page.dart';

import 'package:mohan_new/widgets/button_widget.dart';
import 'package:mohan_new/widgets/lastText_widget.dart';

class CreateAccountPage extends StatefulWidget {
   CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
bool ischeck=false;
bool ispasswordShow=true;
String Select="Select Age";
TextEditingController email= TextEditingController();
TextEditingController password= TextEditingController();
TextEditingController name= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  LoginPage(),
                  ));
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Image.asset("assets/img/back.png"))),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){     FocusScope.of(context).unfocus();},
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Create your account ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 48.h,  width: 374.w,

                    child: TextField(
                      controller: name,
                        decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                          fillColor:  Colors.indigo.shade50,
                          filled: true,
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 48.h,  width: 374.w,

                    child: TextField(
                    controller: email,
                      keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      hintText: "Email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                          isDense: true,
                          fillColor:  Colors.indigo.shade50,
                          filled: true,
                    )),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 48.h,  width: 374.w,

                    child: TextField(
                     controller: password,
                        obscureText: ispasswordShow,
                        decoration: InputDecoration(
                       suffixIcon:  InkWell(onTap: (){
                       setState(() {
                         if(ispasswordShow){
                           ispasswordShow=false;
                         }else{
                           ispasswordShow=true;
                         }
                       });
                       }, child: Image.asset("assets/img/icon.png")),
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          isDense: true,
                          fillColor:  Colors.indigo.shade50,
                          filled: true,
                        )),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo.shade50,
                    ),

                    width: 355.w,
                    height: 49.h,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: DropdownButton<String>(
                        // alignment: Alignment.topLeft,
                        isExpanded: true,
                         hint: Text(Select,style: TextStyle(color: Colors.grey.shade500),),
                        padding: const EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(30),
                        underline: const SizedBox(),
                        isDense: true,
                        items: <String>['1', '2', '3', '4'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            Select=  value!;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                      children: [
                        Text('i have read the' ,style: TextStyle(fontSize: 12.sp,color: const Color(0xffA1A4B2))),
                        const SizedBox(width: 5,),
                        Text('Privace Policy',style: TextStyle(fontSize: 12.sp,color: const Color(0xff8E97FD))),


                      ],
                    ),
                    Checkbox(  value: ischeck, onChanged: (value) {
                      setState(() {
                        ischeck=value!;
                        // if(ischeck){
                        //   ischeck=false;
                        // }else{
                        //   ischeck=true;
                        // }
                      });

                    },)
                  ],),
                ),
            SizedBox(
                  height: 100.h,
                ),
                ButtonWidget("GET STARTED", () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage(),));
                }),
              SizedBox(
                  height: 30.h,
                ),


              ]),
        ),
      ),
    );
  }
}
