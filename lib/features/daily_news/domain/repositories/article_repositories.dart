import '../../../../core/constants/export.dart';
import '../../data/models/data/data.dart';

abstract class ArticleRepositories {
  Future<ApiRequestStatus<DataModel>> getNewsArticle();
}
