import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_units.freezed.dart';
part 'hourly_units.g.dart';

@freezed
class HourlyUnits with _$HourlyUnits {
  const factory HourlyUnits({
    required String temperature2m,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);
}
