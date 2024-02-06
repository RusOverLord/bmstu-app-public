import 'package:bbmstu_app/src/core/network/repeating_request/repeating_request.dart';
import 'package:bbmstu_app/src/core/utility/usecase.dart';
import 'package:bbmstu_app/src/features/news/data/news_repository.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_list.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsListRequestProvider = Provider.autoDispose<NewsListRequest>((ref) {
  return NewsListRequest(
    repository: ref.watch(newsRepositoryProvider),
  );
});

class NewsListRequest
    implements UseCase<RepeatingRequest<NewsList>, NewsListRequestParams> {
  final NewsRepository repository;

  const NewsListRequest({
    required this.repository,
  });

  @override
  RepeatingRequest<NewsList> call(NewsListRequestParams params) {
    return RepeatingRequest.infinity(
      request: () => repository.getNewsList(params.page),
    );
  }
}

class NewsListRequestParams extends Equatable {
  final int page;

  const NewsListRequestParams({
    required this.page,
  });

  @override
  List<Object> get props => [
        page,
      ];
}
