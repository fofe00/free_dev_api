import 'package:meta/meta.dart';
import 'dart:convert';

ApiCategory apiCategoryFromJson(String str) =>
    ApiCategory.fromJson(json.decode(str));

String apiCategoryToJson(ApiCategory data) => json.encode(data.toJson());

class ApiCategory {
  ApiCategory({
    required this.count,
    required this.categories,
  });

  int count;
  List<String> categories;

  factory ApiCategory.fromJson(Map<String, dynamic> json) => ApiCategory(
        count: json["count"],
        categories: List<String>.from(json["categories"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "categories": List<dynamic>.from(categories.map((x) => x)),
      };
}
