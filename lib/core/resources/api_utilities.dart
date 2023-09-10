import 'package:retrofit/retrofit.dart';

import '../constants/export.dart';

Future<ApiRequestStatus<T>> handleApiRequest<T>(
    Future<HttpResponse<T>> Function() apiRequest) async {
  try {
    final httpResponse = await apiRequest();

    if (httpResponse.response.statusCode == HttpStatus.ok) {
      return ApiRequestStatusSuccess(httpResponse.data);
    } else {
      return ApiRequestStatusFailure(DioException(
        error: httpResponse.response.statusMessage,
        response: httpResponse.response,
        type: DioExceptionType.badResponse,
        requestOptions: httpResponse.response.requestOptions,
      ));
    }
  } on DioException catch (e) {
    return ApiRequestStatusFailure(e);
  }
}
