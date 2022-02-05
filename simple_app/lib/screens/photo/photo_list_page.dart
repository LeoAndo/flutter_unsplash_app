import 'package:flutter/material.dart';
import 'package:simple_app/router/app_router.gr.dart';

class PhotoListPage extends StatefulWidget {
  const PhotoListPage({Key? key}) : super(key: key);

  @override
  State<PhotoListPage> createState() => _PhotoListPageState();
}

class _PhotoListPageState extends State<PhotoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: const Text("Title: 1"),
          subtitle: const Text("subtitle 1"),
          onTap: () {
            PhotoDetailsRoute(id: 1).show(context);
          },
        ),
      ),
    );
  }
}
