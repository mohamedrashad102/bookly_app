import 'dart:convert';


class SaleInfo {
	final String? country;
	final String? saleability;
	final bool? isEbook;

	const SaleInfo({this.country, this.saleability, this.isEbook});

	@override
	String toString() {
		return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';
	}

	factory SaleInfo.fromMap(Map<String, dynamic> data) => SaleInfo(
				country: data['country'] as String?,
				saleability: data['saleability'] as String?,
				isEbook: data['isEbook'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'country': country,
				'saleability': saleability,
				'isEbook': isEbook,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SaleInfo].
	factory SaleInfo.fromJson(String data) {
		return SaleInfo.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [SaleInfo] to a JSON string.
	String toJson() => json.encode(toMap());

	SaleInfo copyWith({
		String? country,
		String? saleability,
		bool? isEbook,
	}) {
		return SaleInfo(
			country: country ?? this.country,
			saleability: saleability ?? this.saleability,
			isEbook: isEbook ?? this.isEbook,
		);
	}
}
