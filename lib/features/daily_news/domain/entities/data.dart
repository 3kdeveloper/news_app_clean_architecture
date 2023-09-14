import '../../data/models/article/article.dart';

class DataEntity {
  final String? status;
  final int? totalResults;
  final List<ArticleModel>? articles;

  const DataEntity({this.status, this.totalResults, this.articles});
}
