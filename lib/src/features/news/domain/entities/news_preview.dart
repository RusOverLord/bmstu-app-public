class NewsPreview {
  final String uuid;
  final String created;
  final String previewDescription;
  final String previewImageUrl;
  final String title;
  final int views;

  NewsPreview({
    required this.uuid,
    required this.created,
    required this.previewDescription,
    required this.previewImageUrl,
    required this.title,
    required this.views,
  });
}
