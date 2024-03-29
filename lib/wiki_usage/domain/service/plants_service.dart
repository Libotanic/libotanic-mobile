import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:libotanic/common/domain/common/app_state.dart';
import 'package:libotanic/wiki_usage/data/export_all_data_models.dart';

class PlantsService {
  static Future<Response> getPlantsInfo() async {
    try {
      String gardenId = GardenState.currentGarden().toString();
      var response =
          await Dio().get('https://libotanic.up.railway.app/gardens/$gardenId');
      print(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<ExtendedPlant>> fetchPlantsListAll() async {
    var response = await getPlantsInfo();
    if (response.data != null) {
      return await parsePlantsList(response.data);
    } else {
      throw Exception();
    }
  }

  static Future<List<ExtendedPlant>> parsePlantsList(dynamic data) async {
    List<ExtendedPlant> list = [];
    for (final item in data) {
      list.add(ExtendedPlant.fromJson(item));
    }
    return list;
  }

  static Future<List<ExtendedPlant>> fetchPlantsList(
      PlantClass plantClass) async {
    var list = await PlantsService.fetchPlantsListAll();
    var classList = await Stream.fromIterable(list)
        .where((item) => item.plantClass == plantClass)
        .toList();

    return classList;
  }

  static Future<List<PlantClass>> fetchClasses(Division division) async {
    var list = await PlantsService.fetchPlantsListAll();
    var classes = await Stream.fromIterable(list)
        .where((plant) => plant.plantClass.division == division)
        .map((item) => item.plantClass)
        .toSet();
    if (kDebugMode) {
      print(classes);
    }
    return await Stream.fromIterable(classes).toList();
  }

  static Future<List<Division>> fetchDivisions() async {
    var list = await PlantsService.fetchPlantsListAll();
    if (kDebugMode) {
      print(list);
    }
    var classes = await Stream.fromIterable(list)
        .map((item) => item.plantClass.division)
        .toSet();
    if (kDebugMode) {
      print(classes);
    }
    return await Stream.fromIterable(classes).toList();
  }
}
