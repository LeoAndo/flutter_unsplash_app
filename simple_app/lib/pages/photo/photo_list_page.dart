import 'package:flutter/material.dart';
import 'package:simple_app/data/api/responses/unsplash/unsplash_response.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/pages/photo/photo_item.dart';
import 'package:simple_app/pages/photo/photo_list_viewmodel.dart';
import 'package:simple_app/widgets/loading.dart';

class PhotoListPage extends HookConsumerWidget {
  const PhotoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(photoListViewModelProvider);
    useFuture(useMemoized(() => homeViewModel.searchPhotos()));

    final uiState =
        ref.watch(photoListViewModelProvider.select((value) => value.uiState));
    final Widget widget = uiState.when(
        (value) =>
            _buildSuccessWidget(value, () => {homeViewModel.searchPhotos()}),
        initial: () => Container(),
        loading: () => const Loading(),
        error: (error) => Center(child: Text(error)));
    return widget;
  }

  _buildSuccessWidget(UnsplashResponse data, Function() onRefresh) {
    if (data.results.isEmpty) {
      return const Center(child: Text("no data!"));
    }
    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      child: ListView.builder(
        itemCount: data.results.length,
        itemBuilder: (_, index) {
          return PhotoItem(results: data.results[index]);
        },
      ),
    );
  }
}
