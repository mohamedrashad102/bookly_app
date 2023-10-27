import 'dart:convert';

import 'image_links.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  final String? title;
  final String? subtitle;
  final List<dynamic>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<dynamic>? categories;
  final num? averageRating;
  final int? ratingsCount;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  @override
  String toString() {
    return 'VolumeInfo(title: $title, subtitle: $subtitle, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  factory VolumeInfo.fromMap(Map<String, dynamic> data) => VolumeInfo(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        authors: data['authors'] as List<dynamic>?,
        publisher: data['publisher'] as String?,
        publishedDate: data['publishedDate'] as String?,
        description: data['description'] as String?,
        readingModes: data['readingModes'] == null
            ? null
            : ReadingModes.fromMap(
                data['readingModes'] as Map<String, dynamic>),
        pageCount: data['pageCount'] as int?,
        printType: data['printType'] as String?,
        categories: data['categories'] as List<dynamic>?,
        averageRating: data['averageRating'] as num?,
        ratingsCount: data['ratingsCount'] as int?,
        maturityRating: data['maturityRating'] as String?,
        allowAnonLogging: data['allowAnonLogging'] as bool?,
        contentVersion: data['contentVersion'] as String?,
        panelizationSummary: data['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromMap(
                data['panelizationSummary'] as Map<String, dynamic>),
        imageLinks:
            ImageLinks.fromMap(data['imageLinks'] as Map<String, dynamic>),
        language: data['language'] as String?,
        previewLink: data['previewLink'] as String?,
        infoLink: data['infoLink'] as String?,
        canonicalVolumeLink: data['canonicalVolumeLink'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'subtitle': subtitle,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'readingModes': readingModes?.toMap(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toMap(),
        'imageLinks': imageLinks.toMap(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VolumeInfo].
  factory VolumeInfo.fromJson(String data) {
    return VolumeInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VolumeInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    List<dynamic>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    ReadingModes? readingModes,
    int? pageCount,
    String? printType,
    List<dynamic>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    return VolumeInfo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      authors: authors ?? this.authors,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      description: description ?? this.description,
      readingModes: readingModes ?? this.readingModes,
      pageCount: pageCount ?? this.pageCount,
      printType: printType ?? this.printType,
      categories: categories ?? this.categories,
      maturityRating: maturityRating ?? this.maturityRating,
      allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
      contentVersion: contentVersion ?? this.contentVersion,
      panelizationSummary: panelizationSummary ?? this.panelizationSummary,
      imageLinks: imageLinks ?? this.imageLinks,
      language: language ?? this.language,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
    );
  }
}
