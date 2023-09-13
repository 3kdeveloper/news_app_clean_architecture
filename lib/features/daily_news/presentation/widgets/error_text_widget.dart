import '../../../../core/constants/export.dart';
import 'custom_text_view.dart';

class ErrorTextWidget extends StatelessWidget {
  final String _errorMessage;

  const ErrorTextWidget({Key? key, required String errorMessage})
      : _errorMessage = errorMessage,
        super(key: key);

  @override
  Widget build(BuildContext context) => CustomTextView(
        text: _errorMessage,
        textStyle: textTheme.titleMedium,
      );
}
