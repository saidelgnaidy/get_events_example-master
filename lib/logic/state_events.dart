import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/model/model.dart';
part 'state_events.freezed.dart';

@freezed
class AdvertisementEvent with _$AdvertisementEvent {
  const factory AdvertisementEvent.get() = GetAdvertisement;
}

@freezed
class AdvertisementState with _$AdvertisementState {
  const factory AdvertisementState.loading() = _AdvertisementStateLoading;
  const factory AdvertisementState.loaded({required Advertisement advertisement}) = _AdvertisementStateLoaded;
  const factory AdvertisementState.error({required String error}) = _AdvertisementStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 