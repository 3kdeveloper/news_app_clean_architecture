import 'package:dio/dio.dart';

abstract class ApiRequestStatus<T> {
  final T? data;
  final DioException? error;

  const ApiRequestStatus({this.data, this.error});
}

class InitialApiRequestStatus<T> extends ApiRequestStatus<T> {
  const InitialApiRequestStatus() : super(data: null, error: null);
}

class ApiRequestStatusLoading<T> extends ApiRequestStatus<T> {
  const ApiRequestStatusLoading() : super(data: null, error: null);
}

class ApiRequestStatusSuccess<T> extends ApiRequestStatus<T> {
  const ApiRequestStatusSuccess(T data) : super(data: data);
}

class ApiRequestStatusFailure<T> extends ApiRequestStatus<T> {
  const ApiRequestStatusFailure(DioException error) : super(error: error);
}
