import '../../../../core/constants/export.dart';
import '../../data/models/data/data.dart';
import '../../data/repositories/article_repositories_imp.dart';

class GetArticleUseCase implements UseCase<ApiRequestStatus<DataModel>, void> {
  final ArticleRepositoryImp _articleRepositories;

  GetArticleUseCase(this._articleRepositories);

  @override
  Future<ApiRequestStatus<DataModel>> call({void params}) =>
      _articleRepositories.getNewsArticle();
}
