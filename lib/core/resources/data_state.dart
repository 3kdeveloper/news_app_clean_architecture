import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

class DataInitial<T> extends DataState<T> {
  const DataInitial() : super(data: null, error: null);
}

class DataLoading<T> extends DataState<T> {
  const DataLoading() : super(data: null, error: null);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}
