import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libotanic/common/domain/common/gardens_service.dart';

import '../../data/plant_name.dart';

part 'plants_bloc.freezed.dart';

class PlantsBloc extends Bloc
<PlantsEvent, PlantsState> {
  PlantsBloc() :super(const PlantsState.loading()) {
    on<PlantsEvent>((event, emit) async {
      emit(_Loading());
      await GardensService
          .fetchGardenPlantsData(event.id)
          .then((plants) {
            final plantsShort = plants.map((e) => e.takeName())
            .toList();
            plantsShort.sort((a, b) => a.nameRus.toLowerCase().compareTo(b.nameRus.toLowerCase()));
        emit(_Loaded(plants: plantsShort));
      });
    });
}}

@freezed
class PlantsState with _$PlantsState {
  const factory PlantsState.loading() = _Loading;
  const factory PlantsState.initial() = _Initial;

  const factory PlantsState.loaded({required List<PlantName> plants}) = _Loaded;
}

@freezed
class PlantsEvent with _$PlantsEvent {
  const factory PlantsEvent.load({required int id}) = _Load;
}