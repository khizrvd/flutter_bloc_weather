// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return $checkedNew('Weather', json, () {
    final val = Weather(
      $checkedConvert(json, 'id', (v) => v as int),
      $checkedConvert(json, 'weather_state_name', (v) => v as String),
      $checkedConvert(
          json,
          'weather_state_abbr',
          (v) => _$enumDecode(_$WeatherStateEnumMap, v,
              unknownValue: WeatherState.unknown)),
      $checkedConvert(
          json,
          'wind_direction_compass',
          (v) => _$enumDecode(_$WindDirectionCompassEnumMap, v,
              unknownValue: WindDirectionCompass.unknown)),
      $checkedConvert(json, 'created', (v) => DateTime.parse(v as String)),
      $checkedConvert(
          json, 'applicable_date', (v) => DateTime.parse(v as String)),
      $checkedConvert(json, 'min_temp', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'max_temp', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'the_temp', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'wind_speed', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'wind_direction', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'air_pressure', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'humidity', (v) => v as int),
      $checkedConvert(json, 'visibility', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'predictability', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {
    'weatherStateName': 'weather_state_name',
    'weatherStateAbbr': 'weather_state_abbr',
    'windDirectionCompass': 'wind_direction_compass',
    'applicableDate': 'applicable_date',
    'minTemp': 'min_temp',
    'maxTemp': 'max_temp',
    'theTemp': 'the_temp',
    'windSpeed': 'wind_speed',
    'windDirection': 'wind_direction',
    'airPressure': 'air_pressure'
  });
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'weather_state_name': instance.weatherStateName,
      'weather_state_abbr': _$WeatherStateEnumMap[instance.weatherStateAbbr],
      'wind_direction_compass':
          _$WindDirectionCompassEnumMap[instance.windDirectionCompass],
      'created': instance.created.toIso8601String(),
      'applicable_date': instance.applicableDate.toIso8601String(),
      'min_temp': instance.minTemp,
      'max_temp': instance.maxTemp,
      'the_temp': instance.theTemp,
      'wind_speed': instance.windSpeed,
      'wind_direction': instance.windDirection,
      'air_pressure': instance.airPressure,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'predictability': instance.predictability,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$WeatherStateEnumMap = {
  WeatherState.snow: 'sn',
  WeatherState.sleet: 'sl',
  WeatherState.hail: 'h',
  WeatherState.thunderstorm: 't',
  WeatherState.heavyRain: 'hr',
  WeatherState.lightRain: 'lr',
  WeatherState.showers: 's',
  WeatherState.heavyCloud: 'hc',
  WeatherState.lightCloud: 'lc',
  WeatherState.clear: 'c',
  WeatherState.unknown: 'unknown',
};

const _$WindDirectionCompassEnumMap = {
  WindDirectionCompass.north: 'N',
  WindDirectionCompass.northEast: 'NE',
  WindDirectionCompass.east: 'E',
  WindDirectionCompass.southEast: 'SE',
  WindDirectionCompass.south: 'S',
  WindDirectionCompass.southWest: 'SW',
  WindDirectionCompass.west: 'W',
  WindDirectionCompass.northWest: 'NW',
  WindDirectionCompass.unknown: 'unknown',
};
