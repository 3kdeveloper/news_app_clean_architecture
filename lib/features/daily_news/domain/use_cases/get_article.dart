import 'package:news_app_clean_architecture/features/daily_news/data/models/data.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/repositories/article_repositories_imp.dart';

import '../../../../core/constants/export.dart';

class GetArticleUseCase implements UseCase<ApiRequestStatus<DataModel>, void> {
  final ArticleRepositoryImp _articleRepositories;

  GetArticleUseCase(this._articleRepositories);

  @override
  Future<ApiRequestStatus<DataModel>> call({void params}) =>
      _articleRepositories.getNewsArticle();
}
