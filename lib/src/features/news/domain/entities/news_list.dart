import 'package:bbmstu_app/src/features/news/domain/entities/news_preview.dart';

class NewsList {
  final List<NewsPreview> items;
  final int page;
  final int pageSize;

  NewsList({
    required this.items,
    required this.page,
    required this.pageSize,
  });

  int get length => items.length;

  bool get isEmpty => items.isEmpty;
  bool get isNotEmpty => items.isNotEmpty;

  NewsPreview operator [](int index) {
    return items[index];
  }
}
