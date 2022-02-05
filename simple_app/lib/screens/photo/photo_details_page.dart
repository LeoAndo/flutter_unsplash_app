import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class PhotoDetailsPage extends StatefulWidget {
  final int id;
  const PhotoDetailsPage({
    Key? key,
    @PathParam('id') this.id = -1,
  }) : super(key: key);

  @override
  _PhotoDetailsPageState createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Text("id: " + widget.id.toString());
  }
}
