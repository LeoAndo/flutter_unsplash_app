import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';
import 'package:simple_app/data/app_error.dart';
import 'package:simple_app/domain/repositories/unsplash_repository.dart';
import 'package:simple_app/data/repositories/unsplash_repository_impl.dart';
import 'package:simple_app/pages/photo/photo_list_ui_state.dart';

final photoListViewModelProvider =
    ChangeNotifierProvider((ref) => PhotoListViewModel(ref.read));

class PhotoListViewModel extends ChangeNotifier {
  PhotoListViewModel(this._reader);

  final Reader _reader;

  late final UnsplashRepository _repository =
      _reader(unsplashRepositoryProvider);

  PhotoListUiState _uiState = const PhotoListUiState.initial();
  PhotoListUiState get uiState => _uiState;

  Future<void> searchPhotos() async {
    print("searchPhotos");
    _uiState = const PhotoListUiState.loading();
    final ret = await _repository.searchPhotos();
    ret.when(
        success: (data) => {_handleSuccess(data)},
        failure: (error) => {_handleFailure(error)});
  }

  _handleSuccess(UnsplashResponse data) {
    _uiState = PhotoListUiState(data);
    notifyListeners();
  }

  _handleFailure(AppError error) {
    switch (error.type) {
      case AppErrorType.unauthorized:
        _uiState =
            PhotoListUiState.error("===unauthorized=== " + error.message);
        break;
      default:
        _uiState = PhotoListUiState.error(error.message);
    }
    notifyListeners();
  }
}
