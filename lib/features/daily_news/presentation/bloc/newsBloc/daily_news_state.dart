part of 'daily_news_bloc.dart';

@freezed
class DailyNewsState with _$DailyNewsState {
  const factory DailyNewsState({
    @Default(InitialApiRequestStatus()) ApiRequestStatus apiRequestStatus,
  }) = _DailyNewsState;
}
