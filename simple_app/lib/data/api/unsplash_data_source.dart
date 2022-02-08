import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart'; // Error: Type 'Dio' not found. の対策
import 'app_dio.dart';
import 'responses/unsplash/unsplash_response.dart';
part 'unsplash_data_source.g.dart';

final unsplashDataSourceProvider =
    Provider((ref) => UnsplashDataSource(ref.read));

@RestApi()
abstract class UnsplashDataSource {
  factory UnsplashDataSource(Reader reader) =>
      _UnsplashDataSource(reader(dioProvider));

  @GET('search/photos')
  Future<UnsplashResponse> searchPhotos({
    @Query("query") required String query,
    @Query("page") required int page,
    @Query("per_page") required int perPage,
  });
}
