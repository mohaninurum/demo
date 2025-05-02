import 'dart:convert';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:mohan_new/widgets/rank_model.dart';

class CarrerGraph extends StatelessWidget {
  const CarrerGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Career"),),
      body: SafeArea(
        child: RankingChart(),
      ),
    );
  }
}




class RankingChart extends StatefulWidget {
   RankingChart({super.key});


   static const List<Map<String, Object>> _rankData = [
     {
       'rank': 1,
       'jobs': ['Entrepreneur'],
       'color': Colors.blue,
     },
     {
       'rank': 2,
       'jobs': [
         'Computer support technician',
         'Sales agent',
         'Paramedic',
         'Police officers',
         'Detectives'
       ],
       'color': Colors.grey,
     },
     {
       'rank': 3,
       'jobs': [
         'Marketer',
         'Scientist',
         'Business analyst',
         'Software developer',
         'Company CEO or manager',
         'University professor',
         'Human resources manager'
       ],
       'color': Colors.green,
     },
     {
       'rank': 4,
       'jobs': [
         'Lawyer',
         'Counselor',
         'Musician',
         'Athletic coach',
         'Child care provider',
         'Psychologist',
         'Actor',
         'Artist',
         'Fashion designer',
         'Social worker'

       ],
       'color': Colors.orange,
     },
   ];


  @override
  State<RankingChart> createState() => _RankingChartState();
}

class _RankingChartState extends State<RankingChart> {

  static const List<Map<String, Object>> _rankDatamodel = [
    {
      'rank': 1,
      'jobs': [
        'Entrepreneur',
        '',
        '',
        '',
        ' ',
        '',
        '',
        '',
        ' ',
        ' ',
        '   ',
        ' ',
        '  ',
        '',
        '',
        '',
        ' ',
        '  ',
        '',
        '',
        '',
        ' ',
        ' '
      ],
      'color': Colors.blue,
    },
    {
      'rank': 2,
      'jobs': [
         '',
        'Computer support technician',
        'Sales agent',
        'Paramedic',
        'Police officers',
        'Detectives',
        '',
        '',
        ' ',
        ' ',
        '   ',
        ' ',
        '  ',
        '',
        '',
        '',
        ' ',
        '',
        '',
        '',
        '',
        '',
        ' '
      ],
      'color': Colors.black87,
    },
    {
      'rank': 3,
      'jobs': [

            '',
        ' ',
        ' ',
        '',
        ' ',
        '',
        'Marketer',
        'Scientist',
        'Business analyst',
        'Software developer',
        'Company CEO or manager',
        'University professor',
        'Human resources manager',
        '',
        '',
        '',
        ' ',
        '  ',
        '',
        '',
        '',
        ' ',
        ' '
      ],
      'color': Colors.green,
    },
    {
      'rank': 4,
      'jobs': [
            '',
        ' ',
        '',
        '',
        '',
        '',
        '',
        '',
        ' ',
        ' ',
        '',
        '',
        '',
        'Lawyer',
        'Counselor',
        'Musician',
        'Athletic coach',
        'Child care provider',
        'Psychologist',
        'Actor',
        'Artist',
        'Fashion designer',
        'Social worker'

      ],
      'color': Colors.orange,
    },
  ];

 List labels=[
   'Entrepreneur',
   'Computer support technician',
   'Sales agent',
   'Paramedic',
   'Police officers',
   'Detectives',
   'Marketer',
   'Scientist',
   'Business analyst',
   'Software developer',
   'Company CEO or manager',
   'University professor',
   'Human resources manager',
   'Lawyer',
   'Counselor',
   'Musician',
   'Athletic coach',
   'Child care provider',
   'Psychologist',
   'Actor',
   'Artist',
   'Fashion designer',
   'Social worker'
 ];

 RankModel? rankModel;

 @override
  void initState() {
   rankAddList();
    super.initState();
  }

  List<Widget> rankLit=[];


  rankAddList(){

    for(int i = 0;i<=_rankDatamodel.length-1;i++ ){
      List<String> jobsList=[];
      jobsList=_rankDatamodel[i]["jobs"] as List<String>;
      final Color color = _rankDatamodel[i]['color'] as Color;
      rankLit.add(
          Transform.translate(
            offset: const Offset(
                30, -15), // because we pivot around bottom center, raise text up a bit
            child: Row(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'Rank ${_rankDatamodel[i]["rank"].toString()}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  children:[
                  Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      // Job bars
                      for (int i = 0; i < labels.length-1; i++)

                       jobsList.length-1>=i? labels[i].toString().toLowerCase() ==jobsList[i].toLowerCase()?
                        Padding(
                          padding: const EdgeInsets.only(left: 9.5),
                          child: Container(
                            width: 22,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color:  color,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          // Job labels
                        ): Padding(
                         padding: const EdgeInsets.only(left: 9.5),
                         child: Container(
                           width: 22,
                           height: 20,
                           decoration: BoxDecoration(
                             color:  Colors.white,
                             borderRadius: BorderRadius.circular(4),
                           ),
                         ),
                         // Job labels
                       )
                            :Padding(
                          padding: const EdgeInsets.only(left: 9.5),
                          child: Container(
                            width: 22,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          // Job labels
                        )
                    ],
                  ),
                ),
                  ]

                ),
              ],
            ),
          )
      );
    }

    }


  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text("Best careers For Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FittedBox(child: Text("Different careers are shown as per rank (higher rank is better) ",style: TextStyle(fontSize: 12),)),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),
                  gradient: const LinearGradient(colors: [
                    Colors.red,
                    Colors.green
                  ])
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),
                    color:  Colors.white
                  ),
                  child: ListView(
                    scrollDirection:isPortrait?Axis.horizontal :Axis.vertical,
                    shrinkWrap: true,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            ...rankLit
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                            child: headers(),
                          )
                        ],
                      ),
                    ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }


  Widget headers() {

    final all = labels
        .map((e) => Opacity(
      opacity: 0,
      child: Text(
        e,
      ),
    ))
        .toList();
    return Transform.translate(
      offset: const Offset(
          90, -15), // because we pivot around bottom center, raise text up a bit
      child: Row(
          children: labels
              .map((e) => Transform.rotate(
              alignment: Alignment.topCenter,
              angle: pi / 4,
              child: RotatedBox(
                quarterTurns: -3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2,),
                  child: Stack(children: [
                    SizedBox(
                        height: 26, child: Transform.flip(flipY: true,flipX: true, child: Text(e))),
                    ...all
                  ]),
                ),
              )))
              .toList()),
    );
  }
}


