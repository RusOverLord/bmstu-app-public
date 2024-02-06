import 'package:bbmstu_app/src/features/news/presentation/bloc/news_list_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:sealed_unions/sealed_unions.dart';

class NewsListState extends Union2Impl<NewsListStateLoading, NewsListStateData>
    with EquatableMixin {
  static const _factory = Doublet<NewsListStateLoading, NewsListStateData>();

  NewsListState._(Union2<NewsListStateLoading, NewsListStateData> union)
      : super(union);

  NewsListState.loading()
      : this._(_factory.first(const NewsListStateLoading()));

  NewsListState.data(NewsListStateData data) : this._(_factory.second(data));

  bool get isLoading => join(
        (loading) => true,
        (data) => false,
      );

  bool get isData => join(
        (loading) => false,
        (data) => true,
      );

  @override
  List<Object?> get props => [
        join(
          (loading) => loading,
          (data) => data,
        ),
      ];
}

class NewsListStateLoading {
  const NewsListStateLoading();
}

class NewsListStateData extends Equatable {
  final NewsListIterable items;

  const NewsListStateData(this.items);

  @override
  List<Object> get props => [
        items,
      ];
}
