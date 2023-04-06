import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:libotanic/common/data/garden.dart';

import '../../data/plant.dart';

class GardensService {
  static final dio = Dio(BaseOptions(baseUrl: "https://libotanic.up.railway.app"));
  static Future<List<Garden>> fetchGardensData() async{
      final response = await dio.get(
          '/gardens');
      //developer.log(response.data.runtimeType.toString());
      final ans = response.data.map<Garden>((e) => Garden.fromJson(e)).toList();
      developer.log(ans.runtimeType.toString());
      return ans;
  }

  static Future<List<Plant>> fetchGardenPlantsData(int id) async{
    final response = await dio.get(
        '/gardens/$id/plants');
    //developer.log(response.data.toString());
    final ans = response.data.map<Plant>((e) => Plant.fromJson(e)).toList();
    developer.log(ans.runtimeType.toString());
    return ans;
  }

  static Future<Plant> fetchPlantDetails(int id) async{
    final response = await dio.get(
        '/plants/$id');
    developer.log(response.data.toString());
    final ans = Plant.fromJson(response.data);
    developer.log(ans.runtimeType.toString());
    return ans;
  }
}