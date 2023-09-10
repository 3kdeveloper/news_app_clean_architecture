import 'package:news_app_clean_architecture/config/router/route_names.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/bloc/newsBloc/daily_news_bloc.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/pages/dailyNews/daily_news_page.dart';

import '../../core/constants/export.dart';

class AppRouter {
  // AppRouter({required this.packageInfo}) {
  //   Dio dio = Dio((BaseOptions(
  //       contentType: 'application/json',
  //       headers: {
  //         'Accept': 'application/json',
  //         'api-key': FlavorConfig.instance?.values.apiKey
  //       },
  //       baseUrl: FlavorConfig.instance?.values.apiBaseUrl ?? '')));
  //   dio.interceptors.add(RequestInterceptor());
  //   dataManager = DataManager(
  //       mockApiClient: MockApiClient(),
  //       networkApiClient: NetworkApiClient(dio));
  // }
  //
  // final PackageInfo packageInfo;
  // late DataManager dataManager;

  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? '';
    switch (route) {
      case RouteNames.dailyNewsPageRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<DailyNewsBloc>(
              create: (context) => sl()..add(const OnGetDailyNews()),
              child: const DailyNewsPage()),
        );

      default:
        return null;
    }
  }

  void dispose() {}
}
