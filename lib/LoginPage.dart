
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/SingupPage.dart';
import 'package:mohan_new/create_account_page.dart';
import 'package:mohan_new/widgets/button_widget.dart';
import 'package:mohan_new/widgets/lastText_widget.dart';

import 'forgot_password_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  TextEditingController phone= TextEditingController();
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:  InkWell (onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => const SingupPage(),));
      }, child: Padding(padding: const EdgeInsets.only(left: 13), child: Image.asset("assets/img/back.png"))),),
      body:  SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
        ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 48.h,
              width: 374.w,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(18),
              //   color: Colors.indigo.shade50,
              //
              // ),
                child: TextFormField(
                   controller: email,
                    keyboardType: TextInputType.emailAddress,
                     decoration:      InputDecoration(
                       hintStyle: TextStyle(color: Colors.grey.shade500),
                     hintText: "Email address",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                       ),
                       fillColor:  Colors.indigo.shade50,
                       filled: true,
                       isDense: true
                ),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 48.h,
                width: 374.w,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(18),
                //   color: Colors.indigo.shade50,
                //
                // ),
                child: TextFormField(
                  controller: password,
                    obscureText: true,

                    decoration:      InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                        fillColor:  Colors.indigo.shade50,
                        filled: true,
                      isDense: true
                    ),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                ),
              ),
            ),
             SizedBox(height: 10.h,),
            const Text("OR",style: TextStyle(fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 48.h,
                width: 374.w,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(18),
                //   color: Colors.indigo.shade50,
                //
                // ),
                child: TextFormField(
                  controller: phone,
                  obscureText: true,
                  keyboardType: TextInputType.phone,
                  decoration:      InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor:  Colors.indigo.shade50,
                      filled: true,
                      isDense: true
                  ),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                ),
              ),
            ),
             SizedBox(height: 50.h,),
            ButtonWidget("LOG IN", (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreateAccountPage(),));

              if(_formKey.currentState!.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreateAccountPage(),));

              }
            }),
            SizedBox(height: 15.h,),
             InkWell(onTap: (){

               Navigator.push(context, MaterialPageRoute(builder: (context) =>  ForgotPasswordPage(),));

             }, child: Text("Forgot Password?",style: TextStyle(fontSize: 14.h,fontWeight: FontWeight.bold),)),
            SizedBox(height: 15.h,),
            LastTextWidget("NEW ACCOUNT","SING UP", (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreateAccountPage(),));
            })
            ]

            ),
      ),
    );
  }
}

