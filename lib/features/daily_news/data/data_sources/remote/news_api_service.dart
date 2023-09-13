import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/export.dart';
import '../../models/data.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: Constants.newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<DataModel>> getNewsArticle({
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('apikey') String? apiKey,
  });
}
