import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

import '../../../../core/constants/export.dart';

abstract class ArticleRepositories {
  Future<DataState<List<ArticleEntity>>> getNewsArticle();
}
