import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/home_page.dart';
import 'package:mohan_new/widgets/button_widget.dart';

import 'LoginPage.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  DateTime? selectedDayStart;
  late DateTime _initialTime;
  final List<String> _choices = ['SU', 'M', 'T', 'W', 'TH', 'F', 'S'];
  int _selectedIndex = 0;
  List<String> _selectedOptions = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initialTime = DateTime.now().copyWith(
      hour: 11,
      minute: 40,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What Brings you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp,color: Colors.black),),
                  Text("like to meditate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.black)
                  ),
                  Text("Any time you can choose but We recommend first thing in th morning.",style: TextStyle(fontSize: 15.sp,color: const Color(0xffA1A4B2))
                  )
                ],),
          SizedBox(height: 15.h,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.indigo.shade50,
            ),
            width: 399.w,
            height: 212.h,
            child: CupertinoDatePicker(

              mode: CupertinoDatePickerMode.time,
              // minuteInterval: 15,
              initialDateTime: _initialTime,
              // use24hFormat: true,
              backgroundColor: Colors.indigo.shade50,

              onDateTimeChanged: (time) {
                print(time);
                setState(() {
                  selectedDayStart = DateTime(
                      selectedDayStart!.year,
                      selectedDayStart!.month,
                      selectedDayStart!.day,
                      time.hour,
                      time.minute);
                });
              },
            ),
          ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Which day would you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp,color: Colors.black),),
                  Text("like to meditate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.black)
                  ),
                  Text("Everyday is best, but we recommend pickingat least five.",style: TextStyle(fontSize: 15.sp,color: const Color(0xffA1A4B2))
                  )
                ],),
              SizedBox(height: 15.h,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _choices.map((option) {
              final isSelected = _selectedOptions.contains(option);
              return FilterChip(
                showCheckmark: false,

                label: SizedBox(width: 23.w,height: 22.h,child: Center(child: Text(option))),
                selected: isSelected,
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      _selectedOptions.add(option);
                    } else {
                      _selectedOptions.remove(option);
                    }
                  });
                },


                labelPadding: EdgeInsets.all(1),
                selectedColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              );
            }).toList(),
//             List.generate(_choices.length, (index){
//               return
//                 ChoiceChip(
//                 showCheckmark: false,
//               padding: EdgeInsets.all(1),
//                 // labelPadding: EdgeInsets.all(1),
//                 selectedColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 label: SizedBox(width: 23.w,height: 22,child: Center(child: Text(style: TextStyle(color:  _selectedIndex==index ? Colors.white:Colors.black), _choices[index])),), selected: _selectedIndex==index,
//                 onSelected: (value){
//
//
// setState(() {
//   _selectedIndex=index;
// });
//                 },
//               );
//             })
          ),
        ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonWidget("SAVE", (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage(),));
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NO THANKS"),
              ),
              SizedBox(height: 70.h,)
            ],
          ),
        ),
      ),
    );
  }
}
