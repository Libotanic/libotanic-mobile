import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libotanic/common/data/garden.dart';
import 'package:libotanic/common/domain/common/gardens_service.dart';

part 'gardens_bloc.freezed.dart';

class GardensBloc extends Bloc<GardensEvent, GardensState> {
  GardensBloc() : super(const _Loading()) {
    on<GardensEvent>((event, emit) async {
      emit(_Loading());
      await GardensService.fetchGardensData().then((gardens) {
        emit(_Loaded(items: gardens));
      });
    });
  }
}

@freezed
class GardensEvent with _$GardensEvent {
  const factory GardensEvent.load() = _Load;
}

@freezed
class GardensState with _$GardensState {
  const factory GardensState.initial() = _Initial;

  const factory GardensState.loading() = _Loading;

  const factory GardensState.loaded({
    required List<Garden> items,
  }) = _Loaded;
}
