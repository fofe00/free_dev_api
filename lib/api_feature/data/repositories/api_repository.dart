import 'package:dev_api/api_feature/data/dataprovider/api_provider.dart';
import 'package:dev_api/api_feature/data/model/api_category.dart';
import 'package:dev_api/api_feature/data/model/api_model.dart';

class ApiRepository {
  final ApiProvider _apiProvider;

  ApiRepository(this._apiProvider);
  // get entries
  Future<ApiModel> getEntries() async {
    final response = await _apiProvider.getData(path: "/entries");
    return apiModelFromJson(response.body);
  }

  Future<ApiCategory> getCategories() async {
    final response = await _apiProvider.getData(path: "/categories");
    return apiCategoryFromJson(response.body);
  }
}
