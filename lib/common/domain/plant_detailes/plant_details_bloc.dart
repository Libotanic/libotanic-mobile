import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libotanic/common/domain/common/gardens_service.dart';

import '../../data/plant.dart';
import '../../data/plant_name.dart';
part 'plant_details_bloc.freezed.dart';

class PlantDetailsBloc extends Bloc
<PlantDetailsEvent, PlantDetailsState> {
  PlantDetailsBloc() :super(const PlantDetailsState.initial()) {
    on<PlantDetailsEvent>((event, emit) async {
      emit(_Loading());
      await GardensService
          .fetchPlantDetails(event.id)
          .then((plant) {
        emit(_Loaded(plant: plant));
      });
    });
  }}

@freezed
class PlantDetailsState with _$PlantDetailsState {
  const factory PlantDetailsState.loading() = _Loading;
  const factory PlantDetailsState.initial() = _Initial;

  const factory PlantDetailsState.loaded({required Plant plant}) = _Loaded;
}

@freezed
class PlantDetailsEvent with _$PlantDetailsEvent {
  const factory PlantDetailsEvent.load({required int id}) = _Load;
}