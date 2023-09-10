import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/export.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: Constants.newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticle({
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('apikey') String? apiKey,
  });
}
