import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/LoginPage.dart';
import 'package:mohan_new/widgets/button_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
    ForgotPasswordPage({super.key});
   TextEditingController  email=TextEditingController();
   TextEditingController  phone=TextEditingController();
   final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:  InkWell (onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage(),));
      }, child: Padding(padding: const EdgeInsets.only(left: 13), child: Image.asset("assets/img/back.png"))),),
      body:  SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
    FocusScope.of(context).unfocus();
          },
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Forgot Password!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
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


                const Text("OR",style: TextStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 48.h,
                    width: 374.w,

                    child: TextFormField(
                      controller: phone,
                      obscureText: true,
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
                ButtonWidget("Forgot Password", (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreateAccountPage(),));

                  // if(_formKey.currentState!.validate()){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreateAccountPage(),));
                  //
                  // }
                }),


              ]

          ),
        ),
      ),
    );
  }
}

