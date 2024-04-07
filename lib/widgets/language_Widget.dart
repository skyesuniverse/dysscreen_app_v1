import 'package:dysscreen_app_v1/models/language.dart';
import 'package:flutter/material.dart';

class LanguageSelectionBottomSheet extends StatefulWidget {
  @override
  _LanguageSelectionBottomSheetState createState() =>
      _LanguageSelectionBottomSheetState();
}

class _LanguageSelectionBottomSheetState
    extends State<LanguageSelectionBottomSheet> {
  late String selectedLanguage;
  late List<Language> languages;

  @override
  void initState() {
    super.initState();
    selectedLanguage =
        'English'; // Set English as the default selected language
    languages = Language.languageList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: languages.map((language) {
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
                      ? Icon(Icons.check,
                          color:
                              Colors.blue) // Check icon for selected language
                      : null,
                  onTap: () {
                    setState(() {
                      selectedLanguage = language.name;
                    });
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
