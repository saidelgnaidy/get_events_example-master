// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Advertisement _$$_AdvertisementFromJson(Map<String, dynamic> json) =>
    _$_Advertisement(
      id: json['id'] as int,
      title: json['title'] as String,
      img: (json['img'] as List<dynamic>).map((e) => e as String).toList(),
      interest: json['interest'] as String,
      price: json['price'] as int,
      date: DateTime.parse(json['date'] as String),
      address: json['address'] as String,
      trainerName: json['trainerName'] as String,
      trainerImg: json['trainerImg'] as String,
      trainerInfo: json['trainerInfo'] as String,
      occasionDetail: json['occasionDetail'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      isLiked: json['isLiked'] as bool,
      isSold: json['isSold'] as bool,
      isPrivateEvent: json['isPrivateEvent'] as bool,
      hiddenCashPayment: json['hiddenCashPayment'] as bool,
      specialForm: json['specialForm'] as int,
      questionnaire: json['questionnaire'],
      questExplanation: json['questExplanation'],
      reservTypes: (json['reservTypes'] as List<dynamic>)
          .map((e) => ReservType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdvertisementToJson(_$_Advertisement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'img': instance.img,
      'interest': instance.interest,
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'address': instance.address,
      'trainerName': instance.trainerName,
      'trainerImg': instance.trainerImg,
      'trainerInfo': instance.trainerInfo,
      'occasionDetail': instance.occasionDetail,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isLiked': instance.isLiked,
      'isSold': instance.isSold,
      'isPrivateEvent': instance.isPrivateEvent,
      'hiddenCashPayment': instance.hiddenCashPayment,
      'specialForm': instance.specialForm,
      'questionnaire': instance.questionnaire,
      'questExplanation': instance.questExplanation,
      'reservTypes': instance.reservTypes,
    };

_$_ReservType _$$_ReservTypeFromJson(Map<String, dynamic> json) =>
    _$_ReservType(
      id: json['id'] as int,
      name: json['name'] as String,
      count: json['count'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_ReservTypeToJson(_$_ReservType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
      'price': instance.price,
    };
