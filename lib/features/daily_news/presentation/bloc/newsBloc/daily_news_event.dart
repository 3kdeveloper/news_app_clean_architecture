part of 'daily_news_bloc.dart';

@freezed
class DailyNewsEvent with _$DailyNewsEvent {
  const factory DailyNewsEvent.onGetDailyNews() = OnGetDailyNews;
}
