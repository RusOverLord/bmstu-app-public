import 'package:bbmstu_app/src/core/network/repeating_request/repeating_request.dart';
import 'package:bbmstu_app/src/core/utility/usecase.dart';
import 'package:bbmstu_app/src/features/news/data/news_repository.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getNewsFullProvider = Provider.autoDispose<GetNewsFull>((ref) {
  final repository = ref.watch(newsRepositoryProvider);
  return GetNewsFullImpl(repository);
});

abstract class GetNewsFull
    implements UseCase<RepeatingRequest<NewsFull>, GetNewsFullParams> {}

class GetNewsFullImpl implements GetNewsFull {
  final NewsRepository repository;

  GetNewsFullImpl(this.repository);

  @override
  RepeatingRequest<NewsFull> call(GetNewsFullParams params) {
    return RepeatingRequest.infinity(
      request: () => repository.getNewsFull(params.uuid),
    );
  }
}

class GetNewsFullParams extends Equatable {
  final String uuid;

  const GetNewsFullParams({
    required this.uuid,
  });

  @override
  List<Object> get props => [uuid];
}
