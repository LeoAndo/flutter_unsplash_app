import 'package:flutter/material.dart';
import 'package:simple_app/widgets/async_snapshot.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/pages/photo/photo_item.dart';
import 'package:simple_app/pages/photo/photo_list_viewmodel.dart';
import 'package:simple_app/widgets/container_with_loading.dart';
import 'package:simple_app/widgets/loading_state_view_model.dart';

class PhotoListPage extends HookConsumerWidget {
  const PhotoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(photoListViewModelProvider);
    final photos =
        ref.watch(photoListViewModelProvider.select((value) => value.photos));

    final snapshot = useFuture(
      useMemoized(() {
        return ref
            .read(loadingStateProvider)
            .whileLoading(homeViewModel.searchPhotos);
      }, [photos?.toString()]),
    );

    return ContainerWithLoading(
      child: snapshot.isWaiting || photos == null
          ? const SizedBox()
          : photos.when(success: (data) {
              if (data.results.isEmpty) {
                // return Center(child: Text(l10n.noResult));
                return const Center(child: Text("検索結果０件です！"));
              }
              return RefreshIndicator(
                onRefresh: () async => homeViewModel.searchPhotos(),
                child: ListView.builder(
                  itemCount: data.results.length,
                  itemBuilder: (_, index) {
                    return PhotoItem(results: data.results[index]);
                  },
                ),
              );
            }, failure: (e) {
              // return Center(child: Text(l10n.fetchFailed));
              return Center(child: Text("fetch Failed: " + e.message));
            }),
    );
  }
}
