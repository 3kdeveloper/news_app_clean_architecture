import '../../../../core/constants/export.dart';
import '../../data/models/data.dart';

abstract class ArticleRepositories {
  Future<ApiRequestStatus<DataModel>> getNewsArticle();
}
