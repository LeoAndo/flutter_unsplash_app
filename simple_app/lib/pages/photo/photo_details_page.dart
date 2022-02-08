import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class PhotoDetailsPage extends StatefulWidget {
  final String username;
  const PhotoDetailsPage({
    Key? key,
    @PathParam('username') this.username = "unKnown",
  }) : super(key: key);

  @override
  _PhotoDetailsPageState createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Text("username: " + widget.username);
  }
}
