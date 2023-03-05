import 'package:freezed_annotation/freezed_annotation.dart';

import 'urls.dart';
import 'user.dart';

part 'results.freezed.dart';
part 'results.g.dart';

@freezed
abstract class Results with _$Results {
  factory Results(
      {required String id,
      required Urls urls,
      required int likes,
      required User user}) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
