import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';
import 'package:simple_app/data/api/unsplash_api.dart';
import 'package:simple_app/data/models/result.dart';
import 'package:simple_app/domain/repositories/unsplash_repository.dart';

final unsplashRepositoryProvider =
    Provider((ref) => UnsplashRepositoryImpl(ref.read));

class UnsplashRepositoryImpl implements UnsplashRepository {
  UnsplashRepositoryImpl(this._reader);

  final Reader _reader;

  late final UnsplashApi _dataSource = _reader(unsplashDataSourceProvider);

  @override
  Future<Result<UnsplashResponse>> searchPhotos(
      [query = "dogs", page = 1, perPage = 10]) {
    return Result.guardFuture(
      () async => await _dataSource.searchPhotos(
          query: query, page: page, perPage: perPage),
    );
  }
}
