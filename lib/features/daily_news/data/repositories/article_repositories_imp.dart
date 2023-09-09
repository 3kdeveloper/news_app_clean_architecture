import 'package:news_app_clean_architecture/features/daily_news/data/datasources/remote/news_api_service.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repositories/article_repositories.dart';

import '../../../../core/constants/export.dart';

class ArticleRepositoryImp implements ArticleRepositories {
  late final NewsApiService _networkApiClient;

  ArticleRepositoryImp({required NewsApiService networkApiClient}) {
    _networkApiClient = networkApiClient;
  }

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() =>
      handleApiRequest(() => _networkApiClient.getNewsArticle());
}
