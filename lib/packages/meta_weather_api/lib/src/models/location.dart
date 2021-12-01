import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

enum LocationType {
  @JsonValue('City')
  city,
  @JsonValue('Region')
  region,
  @JsonValue('State')
  state,
  @JsonValue('Province')
  province,
  @JsonValue('Country')
  country,
  @JsonValue('Continent')
  continent,
}

class LatLng {
  const LatLng({required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;
}

@JsonSerializable()
class Location {
  const Location(this.title, this.locationType, this.woeid, this.latLng);

  final String title;
  final LocationType locationType;
  final int woeid;
  @JsonKey(name: "latt_long")
  @LatLngConverter()
  final LatLng latLng;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

class LatLngConverter implements JsonConverter<LatLng, String> {
  const LatLngConverter();

  @override
  String toJson(LatLng latLng) {
    return '${latLng.latitude}, ${latLng.longitude}';
  }

  /// Ask
  @override
  LatLng fromJson(String jsonString) {
    final parts = jsonString.split(',');
    return LatLng(
        latitude: double.tryParse(parts[0]) ?? 0,
        longitude: double.tryParse(parts[1]) ?? 0);
  }
}
