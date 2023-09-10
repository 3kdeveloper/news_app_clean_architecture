import '../../../../core/constants/export.dart';
import 'article.dart';

part 'data_model.g.dart';

//TODO Remove this model if not needed
@JsonSerializable()
class DataModel {
  DataModel({this.articles});

  @JsonKey(name: 'articles')
  List<ArticleModel>? articles;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
