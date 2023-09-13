import '../../../../core/constants/export.dart';
import '../../domain/entities/article.dart';
import 'custom_text_view.dart';
import 'loading_widget.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile({Key? key, ArticleEntity? article})
      : _article = article,
        super(key: key);

  final ArticleEntity? _article;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 14, end: 14, bottom: 7, top: 7),
      height: MediaQuery.of(context).size.width / 2.2,
      child: Row(
        children: [_buildImage(context), _buildTitleAndDescription()],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: _article?.urlToImage ?? '',
        imageBuilder: (context, imageProvider) => Padding(
              padding: const EdgeInsetsDirectional.only(end: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.08),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: ColorsResource.neonWhiteColor)),
                ),
              ),
            ),
        progressIndicatorBuilder: (context, url, downloadProgress) => Padding(
              padding: const EdgeInsetsDirectional.only(end: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: double.maxFinite,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.08)),
                  child: const LoadingWidget(),
                ),
              ),
            ),
        errorWidget: (context, url, error) => Padding(
              padding: const EdgeInsetsDirectional.only(end: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: double.maxFinite,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.08)),
                  child: const Icon(Icons.error),
                ),
              ),
            ));
  }

  Widget _buildTitleAndDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            CustomTextView(
                text: _article?.title ?? '',
                maxLines: 3,
                isEllipsis: true,
                align: TextAlign.start,
                textStyle: textTheme.labelLarge?.copyWith(
                  color: ColorsResource.blackColor,
                  fontWeight: FontWeight.w900,
                )),

            // Description
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: CustomTextView(
                      align: TextAlign.start,
                      text: _article?.description ?? '',
                      maxLines: 2)),
            ),

            // Datetime
            Row(
              children: [
                const Icon(Icons.timeline_outlined, size: 16),
                const SizedBox(width: 4),
                CustomTextView(
                    align: TextAlign.start, text: _article?.publishedAt ?? ''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
