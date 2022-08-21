part of 'api_bloc.dart';

abstract class ApiState extends Equatable {
  const ApiState();

  @override
  List<Object> get props => [];
}

class ApiInitialState extends ApiState {}

class ApiLoadingState extends ApiState {}

class NoInternetState extends ApiState {}

class LoadedApiState extends ApiState {
  final ApiModel apiModel;

  const LoadedApiState({
    required this.apiModel,
  });
  @override
  List<Object> get props => [apiModel];
}
