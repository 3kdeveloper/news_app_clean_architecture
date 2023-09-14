import '../../../../../core/constants/export.dart';
import '../../../domain/entities/data.dart';
import '../article/article.dart';

part 'data.g.dart';

@JsonSerializable()
class DataModel extends DataEntity {
  const DataModel({
    String? status,
    int? totalResults,
    List<ArticleModel>? articles,
  }) : super(
          status: status,
          totalResults: totalResults,
          articles: articles,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);

  factory DataModel.fromEntity(DataEntity entity) {
    return DataModel(
      status: entity.status,
      totalResults: entity.totalResults,
      articles: entity.articles,
    );
  }
}
