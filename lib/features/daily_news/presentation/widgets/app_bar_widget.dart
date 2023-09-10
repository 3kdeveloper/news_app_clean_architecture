import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/text_view_widget.dart';

import '../../../../core/constants/export.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    String? title,
    this.onTap,
    this.hideLeading = false,
    List<Widget>? actions,
    this.bgColor,
    this.boxShadow,
    this.imageWidget,
  })  : _title = title ?? '',
        _actions = actions,
        super(key: key);

  final String _title;
  final List<Widget>? _actions;
  final Widget? imageWidget;
  final Color? bgColor;
  final bool hideLeading;
  final BoxShadow? boxShadow;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(boxShadow: boxShadow != null ? [boxShadow!] : null),
      child: AppBar(
        backgroundColor: bgColor ?? ColorsResource.whiteColor,
        elevation: 0,
        title: imageWidget ??
            TextViewWidget(
              text: _title,
              textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ColorsResource.primaryColor,
                  fontWeight: FontWeight.w500),
            ),
        centerTitle: true,
        actions: _actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DimensionsResource.d_60);
}
