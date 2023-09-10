import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/text_view_widget.dart';

import '../../../../core/constants/export.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({required this.errorMessage, super.key});
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextViewWidget(
        text: errorMessage ?? 'Something went wrong',
        textStyle: const TextStyle(fontSize: 20));
  }
}
