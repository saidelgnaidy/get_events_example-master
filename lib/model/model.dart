import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'model.freezed.dart';
part 'model.g.dart';

Advertisement AdvertisementFromJson(String str) => Advertisement.fromJson(json.decode(str));

String AdvertisementToJson(Advertisement data) => json.encode(data.toJson());

@freezed
abstract class Advertisement with _$Advertisement {
  const factory Advertisement({
    required int id,
    required String title,
    required List<String> img,
    required String interest,
    required int price,
    required DateTime date,
    required String address,
    required String trainerName,
    required String trainerImg,
    required String trainerInfo,
    required String occasionDetail,
    required String latitude,
    required String longitude,
    required bool isLiked,
    required bool isSold,
    required bool isPrivateEvent,
    required bool hiddenCashPayment,
    required int specialForm,
    required dynamic questionnaire,
    required dynamic questExplanation,
    required List<ReservType> reservTypes,
  }) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) => _$AdvertisementFromJson(json);
}

@freezed
abstract class ReservType with _$ReservType {
  const factory ReservType({
    required int id,
    required String name,
    required int count,
    required int price,
  }) = _ReservType;

  factory ReservType.fromJson(Map<String, dynamic> json) => _$ReservTypeFromJson(json);
}

// flutter pub run build_runner watch --delete-conflicting-outputs 