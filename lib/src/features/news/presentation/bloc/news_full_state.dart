import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:equatable/equatable.dart';
import 'package:sealed_unions/sealed_unions.dart';

class NewsFullState extends Union3Impl<NewsFullStateLoading, NewsFullStateData,
    NewsFullStateError> with EquatableMixin {
  static const _factory =
      Triplet<NewsFullStateLoading, NewsFullStateData, NewsFullStateError>();

  NewsFullState.loading() : super(_factory.first(const NewsFullStateLoading()));

  NewsFullState.data(NewsFullStateData data) : super(_factory.second(data));

  NewsFullState.error() : super(_factory.third(const NewsFullStateError()));

  @override
  List<Object> get props => [
        join(
          (loading) => loading,
          (data) => data,
          (error) => error,
        ),
      ];
}

class NewsFullStateData extends Equatable {
  final NewsFull newsFull;

  const NewsFullStateData(this.newsFull);

  @override
  List<Object> get props => [
        newsFull,
      ];
}

class NewsFullStateLoading {
  const NewsFullStateLoading();
}

class NewsFullStateError {
  const NewsFullStateError();

  String get message => 'Нет сети';
}
