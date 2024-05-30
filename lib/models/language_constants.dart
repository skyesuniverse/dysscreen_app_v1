import 'package:DysScreen/models/Questions_46.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LAGUAGE_CODE = 'languageCode';

//languages code
const String ENGLISH = 'en';
const String MALAY = 'ms';
// const String CHINESE = 'zh';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');
    case MALAY:
      return const Locale(MALAY, "");
    // case CHINESE:
    //   return const Locale(CHINESE, "");
    default:
      return const Locale(ENGLISH, '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}

String getTranslatedText(dynamic data, BuildContext context) {
  final currentLocale = Localizations.localeOf(context).languageCode;

  // Print current locale
  print("Current Locale: $currentLocale");

  if (data is Map<dynamic, dynamic>) {
    // Print data for debugging
    print("Data: $data");

    // Check if translations exist for the current locale
    print("Translation for $currentLocale: ${data[currentLocale]}");

    // Check if fallback translation to English is used
    print("Fallback to English: ${data['en']}");

    return data[currentLocale] ?? data['en'] ?? '';
  } else if (data is String) {
    // Print the original string if it's not a map
    print("Original String: $data");
    return data; // Return the string directly if it's not a map
  } else {
    // Handle unsupported data type
    print("Unsupported Data Type");
    return ''; // Handle unsupported data type
  }
}
