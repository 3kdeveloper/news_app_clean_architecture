import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repositories/article_repositories.dart';

import '../../../../core/constants/export.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepositories _articleRepositories;

  GetArticleUseCase(this._articleRepositories);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) =>
      _articleRepositories.getNewsArticle();
}
