// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:dev_api/api_feature/data/dataprovider/api_provider.dart';
import 'package:dev_api/api_feature/data/model/api_model.dart';
import 'package:dev_api/api_feature/data/repositories/api_repository.dart';
import 'package:dev_api/locator.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  final ApiRepository apiRepository;

  ApiBloc(
    this.apiRepository,
  ) : super(ApiInitialState()) {
    on<LoadEntryEvent>((event, emit) async {
      final entries = await apiRepository.getEntries();
      emit(LoadedApiState(apiModel: entries));
    });
  }
}
