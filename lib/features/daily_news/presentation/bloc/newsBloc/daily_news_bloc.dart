import '../../../../../core/constants/export.dart';
import '../../../domain/use_cases/get_article.dart';

part 'daily_news_event.dart';
part 'daily_news_state.dart';
part 'daily_news_bloc.freezed.dart';

class DailyNewsBloc extends Bloc<DailyNewsEvent, DailyNewsState> {
  DailyNewsBloc(this._getArticleUseCase) : super(const DailyNewsState()) {
    on<OnGetDailyNews>(_onGetDailyNews);
  }
  final GetArticleUseCase _getArticleUseCase;

  Future<void> _onGetDailyNews(
      DailyNewsEvent event, Emitter<DailyNewsState> emit) async {
    emit(state.copyWith(apiRequestStatus: const ApiRequestStatusLoading()));
    await _getArticleUseCase.call().then((dataState) {
      logger.f(dataState.data?.status);
      if (dataState is ApiRequestStatusSuccess &&
          dataState.data?.articles != null) {
        emit(state.copyWith(
            apiRequestStatus:
                ApiRequestStatusSuccess(dataState.data?.articles)));
      } else {
        if (dataState.error is DioException) {
          logger.f(dataState.error.toString());
          emit(state.copyWith(
              apiRequestStatus: ApiRequestStatusFailure(dataState.error ??
                  DioException(
                      requestOptions: dataState.error?.requestOptions ??
                          RequestOptions()))));
        }
      }
    }).catchError((e) {
      if (e is DioException) {
        emit(state.copyWith(apiRequestStatus: ApiRequestStatusFailure(e)));
      }
    });
  }
}
