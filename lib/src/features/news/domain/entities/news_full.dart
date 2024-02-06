class NewsFull {
  final String uuid;
  final NewsAction newsAction;
  final String created;
  final String previewDescription;
  final String imageUrl;
  final String title;
  final String markdown;
  final int views;

  NewsFull({
    required this.uuid,
    required this.newsAction,
    required this.created,
    required this.previewDescription,
    required this.imageUrl,
    required this.title,
    required this.markdown,
    required this.views,
  });
}

class NewsAction {
  final String title;
  final NewsActionType type;
  final String value;

  NewsAction({
    required this.title,
    required this.type,
    required this.value,
  });
}

enum NewsActionType {
  none,
  url,
  schedule,
}

NewsActionType stringToNewsActionType(String typeString) {
  if (typeString == 'url') {
    return NewsActionType.url;
  }

  if (typeString == 'schedule') {
    return NewsActionType.schedule;
  }

  return NewsActionType.none;
}
