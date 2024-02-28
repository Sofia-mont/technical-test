import 'dart:convert';

UserInfoResponse? userInfoResponseFromJson(String str) =>
    UserInfoResponse.fromJson(json.decode(str));

class UserInfoResponse {
  UserInfoResponse({
    required this.name,
    required this.stepsCounter,
    required this.stepsGoal,
    required this.caloriesGoal,
    required this.caloriesCounter,
    required this.waterGoal,
    required this.waterCounter,
    required this.heartRate,
  });

  final String name;
  final int stepsCounter;
  final int stepsGoal;
  final int caloriesGoal;
  final int caloriesCounter;
  final int waterGoal;
  final int waterCounter;
  final int heartRate;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      UserInfoResponse(
        name: json["name"] ?? '',
        stepsCounter: json["stepsCounter"] ?? 0,
        stepsGoal: json["stepsGoal"] ?? 0,
        caloriesGoal: json["caloriesGoal"] ?? 0,
        caloriesCounter: json["caloriesCounter"] ?? 0,
        waterGoal: json["waterGoal"] ?? 0,
        waterCounter: json["waterCounter"] ?? 0,
        heartRate: json["heartRate"] ?? 0,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoResponse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          stepsCounter == other.stepsCounter &&
          stepsGoal == other.stepsGoal &&
          caloriesGoal == other.caloriesGoal &&
          caloriesCounter == other.caloriesCounter &&
          waterGoal == other.waterGoal &&
          waterCounter == other.waterCounter &&
          heartRate == other.heartRate;

  @override
  int get hashCode =>
      name.hashCode ^
      stepsCounter.hashCode ^
      stepsGoal.hashCode ^
      caloriesGoal.hashCode ^
      caloriesCounter.hashCode ^
      waterGoal.hashCode ^
      waterCounter.hashCode ^
      heartRate.hashCode;
}
