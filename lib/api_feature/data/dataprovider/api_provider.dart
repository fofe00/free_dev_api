import 'package:dev_api/api_feature/data/dataprovider/config_providerr.dart';
import 'package:dev_api/api_feature/data/model/api_model.dart';
import 'package:http/http.dart';

class ApiProvider {
  Config config = Config();
  // get API list

  Future<Response> getData({required String path}) async {
    final response = await get(
      config.buildUri(
        path: path,
      ),
    );
    return response;
  }
}
