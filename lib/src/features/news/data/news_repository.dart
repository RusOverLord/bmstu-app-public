import 'package:bbmstu_app/src/core/error/failures.dart';
import 'package:bbmstu_app/src/features/news/data/models/news_full_model.dart';
import 'package:bbmstu_app/src/features/news/data/models/news_list_model.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_list.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_api/remote_api.dart';

final newsRemoteDataSourceProvider = Provider.autoDispose<NewsApi>(
  (ref) => throw UnimplementedError(),
);

final newsRepositoryProvider = Provider.autoDispose<NewsRepository>(
  (ref) {
    final remoteDataSource = ref.watch(newsRemoteDataSourceProvider);
    return NewsRepository(
      remote: remoteDataSource,
    );
  },
);

const _pageSize = 25;

class NewsRepository {
  final NewsApi _remote;

  NewsRepository({
    required NewsApi remote,
  }) : _remote = remote;

  Future<Either<Failure, NewsList>> getNewsList(int page) async {
    try {
      final newsList = await _remote.getNewsList(page, _pageSize);
      return Right(NewsListModel.fromOpenApi(
        newsList: newsList,
        page: page,
        pageSize: _pageSize,
      ));
    } on ServerException {
      return const Left(ServerFailure());
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  Future<Either<Failure, NewsFull>> getNewsFull(String uuid) async {
    try {
      final newsList = await _remote.getNewsFull(uuid);
      return Right(NewsFullModel.fromOpenApi(newsList));
    } on ServerException {
      return const Left(ServerFailure());
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }
}
