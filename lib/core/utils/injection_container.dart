import '../constants/export.dart';
import '../../features/daily_news/data/data_sources/remote/news_api_service.dart';
import '../../features/daily_news/data/repositories/article_repositories_imp.dart';
import '../../features/daily_news/domain/use_cases/get_article.dart';
import '../../features/daily_news/presentation/bloc/newsBloc/daily_news_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependancies() async {
  /// Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  /// Api Services
  sl.registerLazySingleton<NewsApiService>(() => NewsApiService(sl()));

  /// Repositories
  sl.registerLazySingleton<ArticleRepositoryImp>(
      () => ArticleRepositoryImp(newsApiService: sl()));

  /// Use Cases
  sl.registerLazySingleton<GetArticleUseCase>(() => GetArticleUseCase(sl()));

  /// Bloc
  sl.registerFactory<DailyNewsBloc>(() => DailyNewsBloc(sl()));

  /// App Router
  sl.registerLazySingleton<AppRouter>(() => AppRouter());
}
