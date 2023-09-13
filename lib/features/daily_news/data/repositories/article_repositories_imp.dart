import '../../../../core/constants/export.dart';
import '../../domain/repositories/article_repositories.dart';
import '../data_sources/remote/news_api_service.dart';
import '../models/data.dart';

class ArticleRepositoryImp implements ArticleRepositories {
  ArticleRepositoryImp({required NewsApiService newsApiService}) {
    _newsApiService = newsApiService;
  }

  late final NewsApiService _newsApiService;
  final apiKey = dotenv.env['API_KEY'];

  @override
  Future<ApiRequestStatus<DataModel>> getNewsArticle() =>
      handleApiRequest(() => _newsApiService.getNewsArticle(
          country: Constants.country,
          category: Constants.business,
          apiKey: apiKey));
}
