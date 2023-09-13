import '../../../../../core/constants/export.dart';
import '../../../domain/entities/article.dart';
import '../../bloc/newsBloc/daily_news_bloc.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/article_tile.dart';
import '../../widgets/loading_widget.dart';

class DailyNewsPage extends StatelessWidget {
  const DailyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: StringsResource.appName),
      body: BlocConsumer<DailyNewsBloc, DailyNewsState>(
        listener: (context, state) => _dailyNewsBlocListener(state, context),
        builder: (context, state) {
          if (state.apiRequestStatus is ApiRequestStatusLoading) {
            return const LoadingWidget();
          } else if (state.apiRequestStatus is ApiRequestStatusSuccess) {
            final dailyNewsData =
                state.apiRequestStatus.data as List<ArticleEntity>;
            return ListView.builder(
              itemCount: dailyNewsData.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  ArticleTile(article: dailyNewsData[index]),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Future<void> _dailyNewsBlocListener(
      DailyNewsState state, BuildContext context) async {
    if (state.apiRequestStatus is ApiRequestStatusFailure) {
      await Fluttertoast.showToast(
          msg: state.apiRequestStatus.error?.error.toString() ??
              StringsResource.somethingWentWrong);
    }
  }
}
