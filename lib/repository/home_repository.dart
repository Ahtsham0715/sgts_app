import 'package:sgts_app/data/network/base_api_services.dart';
import 'package:sgts_app/data/network/network_api_service.dart';
import 'package:sgts_app/res/app_url.dart';

class HomeRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future fetchMoviesList() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      // return response = MovieListModel.fromJson(response);

    } catch (e) {
      throw e;
    }
  }
}
