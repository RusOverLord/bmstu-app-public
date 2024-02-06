import 'package:intl/intl.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:remote_api/remote_api.dart';

class NewsFullModel extends NewsFull {
  NewsFullModel({
    required String uuid,
    required NewsAction newsAction,
    required String created,
    required String previewDescription,
    required String imageUrl,
    required String title,
    required String markdown,
    required int views,
  }) : super(
          uuid: uuid,
          newsAction: newsAction,
          created: created,
          previewDescription: previewDescription,
          imageUrl: imageUrl,
          title: title,
          markdown: markdown,
          views: views,
        );

  factory NewsFullModel.fromOpenApi(OldmodelsNewsFullNew newsFull) {
    final createdDate = DateTime.parse(newsFull.created!);
    final dateFormat = DateFormat('dd MMMM yyyy', 'ru_RU');
    final created = dateFormat.format(createdDate);
    final newsAction = NewsActionModel.fromOpenApi(newsFull.action!);

    return NewsFullModel(
      uuid: newsFull.uuid ?? '',
      newsAction: newsAction,
      created: created,
      previewDescription: newsFull.previewDescription ?? '',
      imageUrl: newsFull.previewImageUrl ?? '',
      title: newsFull.title ?? '',
      markdown: newsFull.markdown ?? '',
      views: newsFull.views ?? 0,
    );
  }
}

class NewsActionModel extends NewsAction {
  NewsActionModel({
    required String title,
    required NewsActionType type,
    required String value,
  }) : super(
          title: title,
          type: type,
          value: value,
        );

  factory NewsActionModel.fromOpenApi(OldmodelsAction newsAction) {
    final type = stringToNewsActionType(newsAction.type ?? '');

    return NewsActionModel(
      title:  newsAction.title ?? '',
      type: type,
      value: newsAction.value ?? '',
    );
  }
}
