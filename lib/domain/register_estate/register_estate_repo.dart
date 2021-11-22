
import 'package:kellid/domain/register_estate/location/area.dart';
import 'package:kellid/domain/register_estate/location/city.dart';

abstract class RegisterEstateRepo {
  Future<List<Area>> getAllAreas();

  Future<List<City>> getAllCities();


}