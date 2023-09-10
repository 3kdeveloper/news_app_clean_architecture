import 'package:news_app_clean_architecture/features/daily_news/presentation/bloc/newsBloc/daily_news_bloc.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/app_bar_widget.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/loading_widget.dart';

import '../../../../../core/constants/export.dart';

class DailyNewsPage extends StatelessWidget {
  const DailyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Daily News'),
      body: BlocConsumer<DailyNewsBloc, DailyNewsState>(
        listener: (context, state) => _dailyNewsBlocListener(state, context),
        builder: (context, state) {
          if (state.apiRequestStatus is ApiRequestStatusLoading) {
            return const LoadingWidget();
          } else if (state.apiRequestStatus is ApiRequestStatusSuccess) {
            return const Center(child: Text('Success'));
          } else {
            return const Center(child: Text('Empty'));
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
              StringsResource.strSomethingWentWrong);
    }
  }
}
