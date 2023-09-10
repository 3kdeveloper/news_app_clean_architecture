import 'package:news_app_clean_architecture/features/daily_news/data/repositories/article_repositories_imp.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

import '../../../../core/constants/export.dart';

class GetArticleUseCase
    implements UseCase<ApiRequestStatus<List<ArticleEntity>>, void> {
  final ArticleRepositoryImp _articleRepositories;

  GetArticleUseCase(this._articleRepositories);

  @override
  Future<ApiRequestStatus<List<ArticleEntity>>> call({void params}) =>
      _articleRepositories.getNewsArticle();
}
