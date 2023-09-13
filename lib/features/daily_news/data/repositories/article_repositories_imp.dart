import '../../../../core/constants/export.dart';
import '../../domain/repositories/article_repositories.dart';
import '../data_sources/remote/news_api_service.dart';
import '../models/data.dart';

class ArticleRepositoryImp implements ArticleRepositories {
  late final NewsApiService _newsApiService;
  final _apiKey = dotenv.env['API_KEY'];

  ArticleRepositoryImp({required NewsApiService newsApiService}) {
    _newsApiService = newsApiService;
  }

  @override
  Future<ApiRequestStatus<DataModel>> getNewsArticle() =>
      handleApiRequest(() => _newsApiService.getNewsArticle(
          country: Constants.country,
          category: Constants.business,
          apiKey: _apiKey));
}
