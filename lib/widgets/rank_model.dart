// To parse this JSON data, do
//
//     final rankModel = rankModelFromJson(jsonString);

import 'dart:convert';

List<RankModel> rankModelFromJson(String str) => List<RankModel>.from(json.decode(str).map((x) => RankModel.fromJson(x)));

String rankModelToJson(List<RankModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RankModel {
  String rank;
  List<String> jobs;
  String color;

  RankModel({
    required this.rank,
    required this.jobs,
    required this.color,
  });

  factory RankModel.fromJson(Map<String, dynamic> json) => RankModel(
    rank: json["rank"],
    jobs: List<String>.from(json["jobs"].map((x) => x)),
    color: json["color"],
  );

  Map<String, dynamic> toJson() => {
    "rank": rank,
    "jobs": List<dynamic>.from(jobs.map((x) => x)),
    "color": color,
  };
}
