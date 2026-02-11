String pickString(Map<String, dynamic> map, List<String> keys, [String fallback = ""]) {
  for (final key in keys) {
    final value = map[key];
    if (value is String && value.trim().isNotEmpty) {
      return value;
    }
    if (value is num) {
      return value.toString();
    }
  }
  return fallback;
}

num? pickNumber(Map<String, dynamic> map, List<String> keys) {
  for (final key in keys) {
    final value = map[key];
    if (value is num) {
      return value;
    }
    if (value is String) {
      final parsed = num.tryParse(value);
      if (parsed != null) {
        return parsed;
      }
    }
  }
  return null;
}

String formatKobo(int kobo, {String currency = "NGN"}) {
  final naira = kobo / 100;
  final safeCurrency =
      currency.trim().isEmpty ? "NGN" : currency.trim().toUpperCase();
  return "$safeCurrency ${naira.toStringAsFixed(2)}";
}

Map<String, dynamic> asStringKeyMap(dynamic value) {
  if (value == null) return <String, dynamic>{};
  if (value is Map<String, dynamic>) return value;
  if (value is Map) {
    return value.map((key, val) => MapEntry(key.toString(), val));
  }
  return <String, dynamic>{};
}

List<Map<String, dynamic>> asStringKeyMapList(dynamic value) {
  if (value is List) {
    return value.map((entry) => asStringKeyMap(entry)).toList();
  }
  return <Map<String, dynamic>>[];
}
