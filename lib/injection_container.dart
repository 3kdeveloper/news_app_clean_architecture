import 'package:news_app_clean_architecture/config/router/app_router.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/datasources/remote/news_api_service.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/repositories/article_repositories_imp.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/bloc/newsBloc/daily_news_bloc.dart';

import 'core/constants/export.dart';

final sl = GetIt.instance;

Future<void> initDependancies() async {
  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<NewsApiService>(() => NewsApiService(sl()));
  sl.registerLazySingleton<ArticleRepositoryImp>(
      () => ArticleRepositoryImp(newsApiService: sl()));

  /// Use Cases
  sl.registerLazySingleton<GetArticleUseCase>(() => GetArticleUseCase(sl()));

  /// Bloc
  sl.registerFactory<DailyNewsBloc>(() => DailyNewsBloc(sl()));

  // App Router
  sl.registerLazySingleton<AppRouter>(() => AppRouter());
}
