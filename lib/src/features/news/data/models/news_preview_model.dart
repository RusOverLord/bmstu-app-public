import 'package:intl/intl.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_preview.dart';
import 'package:remote_api/remote_api.dart';

class NewsPreviewModel extends NewsPreview {
  NewsPreviewModel({
    required String uuid,
    required String created,
    required String previewDescription,
    required String previewImageUrl,
    required String title,
    required int views,
  }) : super(
          uuid: uuid,
          created: created,
          previewDescription: previewDescription,
          previewImageUrl: previewImageUrl,
          title: title,
          views: views,
        );

  factory NewsPreviewModel.fromOpenApi(OldmodelsNewsItem preview) {
    final createdDate = DateTime.parse(preview.created!);
    final dateFormat = DateFormat('dd MMMM yyyy', 'ru_RU');
    final created = dateFormat.format(createdDate);

    return NewsPreviewModel(
      uuid: preview.uuid ?? '',
      created: created,
      previewDescription: preview.previewDescription ?? '',
      previewImageUrl: preview.previewImageUrl ?? '',
      title: preview.title ?? '',
      views: preview.views ?? 0,
    );
  }
}
