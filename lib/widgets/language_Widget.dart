import 'package:dysscreen_app_v1/main.dart';
import 'package:dysscreen_app_v1/models/language.dart';
import 'package:dysscreen_app_v1/models/language_constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSelectionBottomSheet extends StatefulWidget {
  @override
  _LanguageSelectionBottomSheetState createState() =>
      _LanguageSelectionBottomSheetState();
}

class _LanguageSelectionBottomSheetState
    extends State<LanguageSelectionBottomSheet> {
  late String selectedLanguage;
  // late List<Language>? languages; // Nullable list
  late List<Language> languages = []; // Initialize as an empty list

  @override
  void initState() {
    super.initState();
    _retrieveSelectedLanguage();
  }

  _retrieveSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedLanguage = prefs.getString('selectedLanguage') ?? 'English';
      languages = Language.languageList();
    });
    return selectedLanguage;
  }

  void _updateSelectedLanguage(String languageName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', languageName);
    setState(() {
      selectedLanguage = languageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (languages == null) {
      // Return a loading indicator or an empty container
      return Center(child: CircularProgressIndicator());
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: languages!.map((language) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    language.name,
                    style: TextStyle(
                      color: selectedLanguage == language.name
                          ? Colors.blue // Selected language color
                          : Colors.black, // Default color
                    ),
                  ),
                  trailing: selectedLanguage == language.name
                      ? Icon(Icons.check, color: Colors.blue)
                      : null,
                  onTap: () async {
                    if (language != null) {
                      Locale _locale = await setLocale(language.languageCode);
                      MyApp.setLocale(
                          context, Locale(language.languageCode, ''));

                      setState(() {
                        selectedLanguage = language.name;
                        Navigator.pop(context); // Close the bottom sheet
                      });

                      _updateSelectedLanguage(
                          language.name); // Update selected language
                    }
                  },
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  color: Colors.black12,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
