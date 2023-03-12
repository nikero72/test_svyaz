import 'package:hive/hive.dart';

part 'books.g.dart';

@HiveType(typeId: 1)
class Books {
  @HiveField(0)
  List<int> id;

  @HiveField(1)
  List<String> title;

  @HiveField(2)
  List<int> year;

  @HiveField(3)
  List<String> author;

  @HiveField(4)
  List<String> description;

  @HiveField(5)
  List<String> image;

  @HiveField(6)
  List<bool> isFavorite;

  Books({
    required this.id,
    required this.title,
    required this.year,
    required this.author,
    required this.description,
    required this.image,
    required this.isFavorite
  });

  factory Books.fromJson(dynamic json) {
    return Books(
        id: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['id'] as int).toList(),
        title: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['title'] as String).toList(),
        year: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['year'] as int).toList(),
        author: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['author'] as String).toList(),
        description: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['description'] as String).toList(),
        image: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['image'] as String).toList(),
        isFavorite: (json['books'] as List<Map<String, dynamic>>).map((Map<String, dynamic> e) => e['isFavorite'] as bool).toList()
    );
  }
}