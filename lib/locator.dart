import 'package:dev_api/api_feature/data/dataprovider/api_provider.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<ApiProvider>(() => ApiProvider());
}
