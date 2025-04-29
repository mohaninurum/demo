// import 'package:flutter/cupertino.dart';
//
// class HomePageMain extends StatelessWidget {
//   const HomePageMain({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Center(child: Image.asset("assets/img/Group 17.png")),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Good Morning, Afsar",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 28.sp,
//                   color: Colors.black),
//             ),
//             // Text("like to meditate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.black)
//             // ),
//             Text("We Wish you have a good day",
//                 style: TextStyle(
//                     fontSize: 15.sp, color: const Color(0xffA1A4B2)))
//           ],
//         ),
//         SizedBox(
//           height: 15.h,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [HomeCardTwo1(), HomeCardTwo2()],
//         ),
//         SizedBox(
//           height: 21.h,
//         ),
//         Container(
//           width: 374.w,
//           height: 95.h,
//
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               image: const DecorationImage(
//                   image: AssetImage("assets/home/daily.png")),
//               color: const Color(0xff55546D)),
//           child: ListTile(
//             title: const Text(
//               "Daily Thought",
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             subtitle: Row(
//               children: [
//                 const Text(
//                   "MEDITATION 3-10 MIN",
//                   style: TextStyle(
//                       fontSize: 11,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white),
//                 ),
//                 Container(
//                   width: 5,
//                   height: 5,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 const Text(
//                   "3-10 MIN",
//                   style: TextStyle(
//                       fontSize: 11,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white),
//                 ),
//               ],
//             ),
//             trailing: Container(
//               width: 40,
//               height: 40,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Icon(
//                 Icons.play_circle_filled_outlined,
//                 size: 25,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 21.h,
//         ),
//         const Text(
//           "Recomended for you",
//           style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.normal,
//               color: Colors.black),
//         ),
//         SizedBox(
//           height: 20.h,
//         ),
//         SizedBox(
//           height: 161.h,
//           width: double.infinity,
//           child: ListView.builder(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemCount: 5,
//             itemBuilder: (context, index) => homehorizontalCard(),
//           ),
//         )
//       ],
//     );
//   }
// }
