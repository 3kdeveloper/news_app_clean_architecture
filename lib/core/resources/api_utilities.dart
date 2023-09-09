import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:retrofit/retrofit.dart';

Future<DataState<T>> handleApiRequest<T>(
    Future<HttpResponse<T>> Function() apiRequest) async {
  try {
    final httpResponse = await apiRequest();

    if (httpResponse.response.statusCode == HttpStatus.ok) {
      return DataSuccess(httpResponse.data);
    } else {
      return DataFailed(DioException(
        error: httpResponse.response.statusMessage,
        response: httpResponse.response,
        type: DioExceptionType.badResponse,
        requestOptions: httpResponse.response.requestOptions,
      ));
    }
  } on DioException catch (e) {
    return DataFailed(e);
  }
}
