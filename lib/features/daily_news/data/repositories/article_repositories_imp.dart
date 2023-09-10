import 'package:news_app_clean_architecture/features/daily_news/data/datasources/remote/news_api_service.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repositories/article_repositories.dart';

import '../../../../core/constants/export.dart';

class ArticleRepositoryImp implements ArticleRepositories {
  late final NewsApiService _newsApiService;
  final _apiKey = 'd2cba7f78e9e4054b62b51428883bef3';

  ArticleRepositoryImp({required NewsApiService newsApiService}) {
    _newsApiService = newsApiService;
  }

  @override
  Future<ApiRequestStatus<List<ArticleModel>>> getNewsArticle() =>
      handleApiRequest(() => _newsApiService.getNewsArticle(
            //TODO Pass the correct data here
            country: 'us',
            category: 'business',
            apiKey: _apiKey,
          ));
}
