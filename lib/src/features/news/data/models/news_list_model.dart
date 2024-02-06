import 'package:bbmstu_app/src/features/news/data/models/news_preview_model.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_preview.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_list.dart';
import 'package:remote_api/remote_api.dart';

class NewsListModel extends NewsList {
  NewsListModel({
    required List<NewsPreview> items,
    required int page,
    required int pageSize,
  }) : super(
          items: items,
          page: page,
          pageSize: pageSize,
        );

  factory NewsListModel.fromOpenApi({
    required OldmodelsNewsListNew newsList,
    required int page,
    required int pageSize,
  }) {
    final items = newsList.items
        ?.map((e) => NewsPreviewModel.fromOpenApi(e))
        .toList();
    return NewsListModel(
      items: items ?? [],
      page: page,
      pageSize: pageSize,
    );
  }

  @override
  String toString() {
    return 'NewsListModel[${items.map((e) => e.toString()).join(', ')}]';
  }
}
