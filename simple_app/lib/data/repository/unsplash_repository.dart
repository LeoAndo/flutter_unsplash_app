import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';
import 'package:simple_app/data/models/result.dart';

abstract class UnsplashRepository {
  Future<Result<UnsplashResponse>> searchPhotos(
      [query = "dogs", page = 1, perPage = 10]);
}
