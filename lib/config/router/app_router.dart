import '../../core/constants/export.dart';
import '../../features/daily_news/presentation/bloc/newsBloc/daily_news_bloc.dart';
import '../../features/daily_news/presentation/pages/daily_news/daily_news_page.dart';

class AppRouter {
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
