import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:kellid/application/post_registration/location/post_location_bloc.dart';
import 'package:kellid/data/register_estate/register_estate_repo_impl.dart';
import 'package:kellid/domain/register_estate/register_estate_repo.dart';

GetIt getIt = GetIt.instance;

void setUpGetIt() {
  getIt.allowReassignment = true;
  getIt.registerSingleton<Dio>(Dio());
  // singleton's
  getIt.registerSingleton<RegisterEstateRepo>(RegisterEstateRepoImpl(dio: getIt<Dio>()));
  // factory
  getIt.registerFactory<PostLocationBloc>(() => PostLocationBloc(registerEstateRepo : getIt<RegisterEstateRepo>()));
}
