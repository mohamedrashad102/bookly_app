import 'dart:convert';

class ReadingModes {
	final bool? text;
	final bool? image;

	const ReadingModes({this.text, this.image});

	@override
	String toString() => 'ReadingModes(text: $text, image: $image)';

	factory ReadingModes.fromMap(Map<String, dynamic> data) => ReadingModes(
				text: data['text'] as bool?,
				image: data['image'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'text': text,
				'image': image,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ReadingModes].
	factory ReadingModes.fromJson(String data) {
		return ReadingModes.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ReadingModes] to a JSON string.
	String toJson() => json.encode(toMap());

	ReadingModes copyWith({
		bool? text,
		bool? image,
	}) {
		return ReadingModes(
			text: text ?? this.text,
			image: image ?? this.image,
		);
	}
}
