import 'dart:convert';

class Epub {
	final bool? isAvailable;

	const Epub({this.isAvailable});

	@override
	String toString() => 'Epub(isAvailable: $isAvailable)';

	factory Epub.fromMap(Map<String, dynamic> data) => Epub(
				isAvailable: data['isAvailable'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'isAvailable': isAvailable,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Epub].
	factory Epub.fromJson(String data) {
		return Epub.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Epub] to a JSON string.
	String toJson() => json.encode(toMap());

	Epub copyWith({
		bool? isAvailable,
	}) {
		return Epub(
			isAvailable: isAvailable ?? this.isAvailable,
		);
	}
}
