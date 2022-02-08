import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';
import 'package:simple_app/data/api/unsplash_data_source.dart';
import 'package:simple_app/data/models/result.dart';
import 'package:simple_app/data/repository/unsplash_repository.dart';

final unsplashRepositoryProvider =
    Provider((ref) => UnsplashRepositoryImpl(ref.read));

class UnsplashRepositoryImpl implements UnsplashRepository {
  UnsplashRepositoryImpl(this._reader);

  final Reader _reader;

  late final UnsplashDataSource _dataSource =
      _reader(unsplashDataSourceProvider);

  @override
  Future<Result<UnsplashResponse>> getUnsplashPhoto() {
    return Result.guardFuture(
      () async =>
          await _dataSource.searchPhotos(query: "dogs", page: 1, perPage: 10),
    );
  }
}
