import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';

part 'photo_list_ui_state.freezed.dart';
part 'photo_list_ui_state.g.dart';

@freezed
class PhotoListUiState with _$PhotoListUiState {
  const factory PhotoListUiState.initial() = Initial;
  const factory PhotoListUiState(UnsplashResponse value) = Data;
  const factory PhotoListUiState.loading() = Loading;
  const factory PhotoListUiState.error(String message) = ErrorDetails;

  factory PhotoListUiState.fromJson(Map<String, dynamic> json) =>
      _$PhotoListUiStateFromJson(json);
}
