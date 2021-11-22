import 'package:dio/dio.dart';
import 'package:kellid/domain/register_estate/location/area.dart';
import 'package:kellid/domain/register_estate/location/city.dart';
import 'package:kellid/domain/register_estate/register_estate_repo.dart';

class RegisterEstateRepoImpl extends RegisterEstateRepo {
  final Dio dio;

  RegisterEstateRepoImpl({required this.dio});
  @override
  Future<List<Area>> getAllAreas() async {
    try{
      final res = await dio.get('/areas');
      List<dynamic> resList = res.data['data'];
      List<Area> list = [];
      for(final e in resList){
        list.add(Area.fromJson(e));
      }
      return list;
    }catch(e){
     rethrow;
    }
  }

  @override
  Future<List<City>> getAllCities() async {
    try{
      final res = await dio.get('/cities');
      List<dynamic> resList = res.data['data'];
      List<City> list = [];
      for(final e in resList){
        list.add(City.fromJson(e));
      }
      return list;
    }catch(e){
      rethrow;
    }
  }
}