import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/logic/state_events.dart';
import 'package:template/model/model.dart';
import 'package:template/service/service.dart';

class AdvertisementBloc extends Bloc<AdvertisementEvent, AdvertisementState> {
  AdvertisementBloc() : super(const AdvertisementState.loading()) {
    on<GetAdvertisement>(_getAdvertisement);
  }
  static AdvertisementBloc of(BuildContext context) {
    return BlocProvider.of<AdvertisementBloc>(context);
  }

  FutureOr<void> _getAdvertisement(GetAdvertisement event, Emitter<AdvertisementState> emit) async {
    try {
      Advertisement advertisement = await API.getAdvertisement;
      emit(AdvertisementState.loaded(advertisement: advertisement));
    } catch (e) {
      emit(AdvertisementState.error(error: e.toString()));
    }
  }
}
