import '../../../../core/constants/export.dart';
import '../../data/models/article.dart';

class DataEntity extends Equatable {
  final String? status;
  final int? totalResults;
  final List<ArticleModel>? articles;

  const DataEntity({this.status, this.totalResults, this.articles});

  @override
  List<Object?> get props {
    return [status, totalResults, articles];
  }
}
