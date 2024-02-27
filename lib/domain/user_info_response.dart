import 'dart:convert';

UserInfoResponse? userInfoResponseFromJson(String str) =>
    UserInfoResponse.fromJson(json.decode(str));

class UserInfoResponse {
  UserInfoResponse({
    this.name,
    this.stepsCounter,
    this.stepsGoal,
    this.caloriesGoal,
    this.caloriesCounter,
    this.waterGoal,
    this.waterCounter,
    this.heartRate,
  });

  final String? name;
  final int? stepsCounter;
  final int? stepsGoal;
  final int? caloriesGoal;
  final int? caloriesCounter;
  final int? waterGoal;
  final int? waterCounter;
  final int? heartRate;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      UserInfoResponse(
        name: json["name"],
        stepsCounter: json["stepsCounter"],
        stepsGoal: json["stepsGoal"],
        caloriesGoal: json["caloriesGoal"],
        caloriesCounter: json["caloriesCounter"],
        waterGoal: json["waterGoal"],
        waterCounter: json["waterCounter"],
        heartRate: json["heartRate"],
      );
}
