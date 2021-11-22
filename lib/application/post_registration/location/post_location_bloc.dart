import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kellid/domain/core/enums.dart';
import 'package:kellid/domain/register_estate/location/area.dart';
import 'package:kellid/domain/register_estate/location/city.dart';
import 'package:kellid/domain/register_estate/register_estate_repo.dart';

part 'post_location_event.dart';

part 'post_location_state.dart';

class PostLocationBloc extends Bloc<PostLocationEvent, PostLocationState> {
  final RegisterEstateRepo registerEstateRepo;

  PostLocationBloc({
    required this.registerEstateRepo,
  }) : super(PostLocationMainState.init());

  @override
  Stream<PostLocationState> mapEventToState(
    PostLocationEvent event,
  ) async* {
    final currentState = state as PostLocationMainState;
    // get location data
    if (event is PostLocationInitial) {
      yield currentState.copyWith(isLoading: true);
      try {
        final areas = await registerEstateRepo.getAllAreas();
        final cities = await registerEstateRepo.getAllCities();
        yield currentState.copyWith(
          areas: areas,
          cities: cities,
          isLoading: false,
          getLocationDataResponse: ApiResponse(
            response: Success(),
          ),
        );
      } catch (e) {
        yield currentState.copyWith(
          isLoading: false,
          getLocationDataResponse: ApiResponse(
            response: Failure(
              message: e.toString(),
            ),
          ),
        );
      }
    }
  }
}
