import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/api/responses/unsplash/results.dart';
import 'package:simple_app/router/app_router.gr.dart';
import 'package:simple_app/router/use_router.dart';

class PhotoItem extends HookConsumerWidget {
  final Results results;

  const PhotoItem({
    Key? key,
    required this.results,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    return Card(
      child: ListTile(
        title: Text("id: " + results.id),
        subtitle: Text("likes " + results.likes.toString()),
        leading: Image.network(results.urls.regular),
        onTap: () {
          router.push(PhotoDetailsRoute(username: results.user.username));
        },
      ),
    );
  }
}
