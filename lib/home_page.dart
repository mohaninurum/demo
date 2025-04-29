import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/choose_topic.dart';
import 'package:mohan_new/reminder_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int  _currentIndex=0;

 List<Widget> pages=[
   const ReminderPage(),
   ChooseTopic(),
   const ReminderPage(),
   ChooseTopic()
 ];

 selectButtom(int index){
   setState(() {
     _currentIndex=index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/img/Group 17.png")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning, Afsar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp,
                          color: Colors.black),
                    ),
                    // Text("like to meditate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.black)
                    // ),
                    Text("We Wish you have a good day",
                        style: TextStyle(
                            fontSize: 15.sp, color: const Color(0xffA1A4B2)))
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [HomeCardTwo1(), HomeCardTwo2()],
                ),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  width: 374.w,
                  height: 95.h,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage("assets/home/daily.png")),
                      color: const Color(0xff55546D)),
                  child: ListTile(
                    title: const Text(
                      "Daily Thought",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: Row(
                      children: [
                        const Text(
                          "MEDITATION 3-10 MIN",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const Text(
                          "3-10 MIN",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.play_circle_filled_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                const Text(
                  "Recomended for you",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 161.h,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => homehorizontalCard(),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,

          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: _currentIndex==0? const Icon(Icons.home,color: Colors.blue,):const Icon(Icons.home),
                  onPressed: () {

                    selectButtom(0);
                  },
                ),
                IconButton(
                  icon: _currentIndex==1? const Icon(Icons.search,color: Colors.blue,):const Icon(Icons.search),
                  onPressed: () {
                    selectButtom(1);
                  },
                ),
                IconButton(
                  icon: _currentIndex==2? const Icon(Icons.favorite_border_outlined,color: Colors.blue,):const Icon(Icons.favorite_border_outlined),
                  onPressed: () {
                    selectButtom(2);
                  },
                ),
                IconButton(
                  icon:  _currentIndex==3?  const Icon(Icons.account_circle_outlined,color: Colors.blue,):const Icon(Icons.account_circle_outlined),
                  onPressed: () {
                    selectButtom(3);
                  },
                )
              ],
            ),
          ),
        ),

    );
  }

  Widget homehorizontalCard() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                ),
            width: 170.w,
            height: 161.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/home/24.jpg"))),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Focus",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "MEDITATION",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const Text(
                      "3-10 MIN",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget HomeCardTwo1() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          color: const Color(0xff8E97FD)),
      
      width: 177.w,
      height: 210.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(),
              Transform.rotate(
                  angle: 0, child: Image.asset("assets/home/Group (3).png"))
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Basics",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "COURSE",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "3-10 MIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.white),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70.w,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffEBEAEC)),
                  child: const Text("START",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget HomeCardTwo2() {
    return Container(
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffFFC97E)),
      width: 177.w,
      height: 210.h,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(),
              Transform.rotate(
                  angle: 0, child: Image.asset("assets/home/Group (4).png"))
            ],
          ),
          Positioned(
            top: 85.h,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Basics",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        "COURSE",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "3-10 MIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 70.w,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffEBEAEC)),
                    child: const Text("START",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
