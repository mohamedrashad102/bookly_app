import 'dart:convert';

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  factory ImageLinks.fromMap(Map<String, dynamic> data) => ImageLinks(
        smallThumbnail: data['smallThumbnail'] as String,
        thumbnail: data['thumbnail'] as String,
      );

  Map<String, dynamic> toMap() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ImageLinks].
  factory ImageLinks.fromJson(String data) {
    return ImageLinks.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ImageLinks] to a JSON string.
  String toJson() => json.encode(toMap());

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    return ImageLinks(
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }
}
