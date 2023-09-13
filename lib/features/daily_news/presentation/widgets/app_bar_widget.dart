import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/custom_text_view.dart';

import '../../../../core/constants/export.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {Key? key, String? title, List<Widget>? actions, double? elevation})
      : _title = title ?? '',
        _actions = actions,
        _elevation = elevation,
        super(key: key);

  final String _title;
  final List<Widget>? _actions;
  final double? _elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: _elevation ?? 0.0,
      title: CustomTextView(
          text: _title,
          textStyle: Theme.of(context).appBarTheme.titleTextStyle),
      centerTitle: true,
      actions: _actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DimensionsResource.d_60);
}
