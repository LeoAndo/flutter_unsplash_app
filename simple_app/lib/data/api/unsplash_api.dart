import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart'; // Error: Type 'Dio' not found. の対策
import 'unsplash_dio.dart';
import 'responses/unsplash/unsplash_response.dart';
part 'unsplash_api.g.dart';

final unsplashDataSourceProvider = Provider((ref) => UnsplashApi(ref.read));

@RestApi()
abstract class UnsplashApi {
  factory UnsplashApi(Reader reader) => _UnsplashApi(reader(dioProvider));

  @GET('search/photos')
  Future<UnsplashResponse> searchPhotos({
    @Query("query") required String query,
    @Query("page") required int page,
    @Query("per_page") required int perPage,
  });
}
