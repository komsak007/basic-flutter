// To parse this JSON data, do
//
//     final exchangeRate = exchangeRateFromJson(jsonString);

// ignore_for_file: file_names, prefer_if_null_operators, unnecessary_null_comparison, prefer_null_aware_operators

import 'dart:convert';

ExchangeRate exchangeRateFromJson(String str) =>
    ExchangeRate.fromJson(json.decode(str));

String exchangeRateToJson(ExchangeRate data) => json.encode(data.toJson());

class ExchangeRate {
  ExchangeRate({
    required this.result,
    required this.documentation,
    required this.termsOfUse,
    required this.timeLastUpdateUnix,
    required this.timeLastUpdateUtc,
    required this.timeNextUpdateUnix,
    required this.timeNextUpdateUtc,
    required this.baseCode,
    required this.targetCode,
    required this.conversionRate,
  });

  String result;
  String documentation;
  String termsOfUse;
  int timeLastUpdateUnix;
  String timeLastUpdateUtc;
  int timeNextUpdateUnix;
  String timeNextUpdateUtc;
  String baseCode;
  String targetCode;
  double conversionRate;

  factory ExchangeRate.fromJson(Map<String, dynamic> json) => ExchangeRate(
        result: json["result"] == null ? null : json["result"],
        documentation:
            json["documentation"] == null ? null : json["documentation"],
        termsOfUse: json["terms_of_use"] == null ? null : json["terms_of_use"],
        timeLastUpdateUnix: json["time_last_update_unix"] == null
            ? null
            : json["time_last_update_unix"],
        timeLastUpdateUtc: json["time_last_update_utc"] == null
            ? null
            : json["time_last_update_utc"],
        timeNextUpdateUnix: json["time_next_update_unix"] == null
            ? null
            : json["time_next_update_unix"],
        timeNextUpdateUtc: json["time_next_update_utc"] == null
            ? null
            : json["time_next_update_utc"],
        baseCode: json["base_code"] == null ? null : json["base_code"],
        targetCode: json["target_code"] == null ? null : json["target_code"],
        conversionRate: json["conversion_rate"] == null
            ? null
            : json["conversion_rate"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null ? null : result,
        "documentation": documentation == null ? null : documentation,
        "terms_of_use": termsOfUse == null ? null : termsOfUse,
        "time_last_update_unix":
            timeLastUpdateUnix == null ? null : timeLastUpdateUnix,
        "time_last_update_utc":
            timeLastUpdateUtc == null ? null : timeLastUpdateUtc,
        "time_next_update_unix":
            timeNextUpdateUnix == null ? null : timeNextUpdateUnix,
        "time_next_update_utc":
            timeNextUpdateUtc == null ? null : timeNextUpdateUtc,
        "base_code": baseCode == null ? null : baseCode,
        "target_code": targetCode == null ? null : targetCode,
        "conversion_rate": conversionRate == null ? null : conversionRate,
      };
}
