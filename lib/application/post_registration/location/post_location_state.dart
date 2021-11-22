part of 'post_location_bloc.dart';


abstract class PostLocationState {}

class PostLocationMainState extends PostLocationState {
  final List<City>? cities;
  final List<Area>? areas;
  final Area? selectedArea;
  final City? selectedCity;
  final bool? isLoading;
  final ApiResponse? getLocationDataResponse;

  PostLocationMainState copyWith({
    List<City>? cities,
    List<Area>? areas,
    Area? selectedArea,
    City? selectedCity,
    bool? isLoading,
    ApiResponse? getLocationDataResponse,
  }) {
    return PostLocationMainState(
      cities: cities ?? this.cities,
      areas: areas ?? this.areas,
      selectedArea: selectedArea ?? this.selectedArea,
      selectedCity: selectedCity ?? this.selectedCity,
      isLoading: isLoading ?? this.isLoading,
      getLocationDataResponse:
          getLocationDataResponse ?? this.getLocationDataResponse,
    );
  }

  static PostLocationMainState init() {
    return PostLocationMainState(
      isLoading: false,
      getLocationDataResponse: ApiResponse(),
    );
  }

  PostLocationMainState({
    this.cities,
    this.areas,
    this.selectedArea,
    this.selectedCity,
    this.isLoading,
    this.getLocationDataResponse,
  });
}
