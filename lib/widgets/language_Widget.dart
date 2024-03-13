import 'package:flutter/material.dart';

class LanguageSelectionBottomSheet extends StatefulWidget {
  @override
  _LanguageSelectionBottomSheetState createState() =>
      _LanguageSelectionBottomSheetState();
}

class _LanguageSelectionBottomSheetState
    extends State<LanguageSelectionBottomSheet> {
  late String selectedLanguage;

  @override
  void initState() {
    super.initState();
    selectedLanguage =
        'English'; // Set English as the default selected language
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                'English',
                style: TextStyle(
                  color: selectedLanguage == 'English'
                      ? Colors.blue // Selected language color
                      : Colors.black, // Default color
                ),
              ),
              trailing: selectedLanguage == 'English'
                  ? Icon(Icons.check,
                      color: Colors.blue) // Check icon for selected language
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguage = 'English';
                });
              },
            ),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Colors.black12,
            ),
            ListTile(
              title: Text(
                'Malay',
                style: TextStyle(
                  color:
                      selectedLanguage == 'Malay' ? Colors.blue : Colors.black,
                ),
              ),
              trailing: selectedLanguage == 'Malay'
                  ? Icon(Icons.check, color: Colors.blue)
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguage = 'Malay';
                });
              },
            ),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Colors.black12,
            ),
            ListTile(
              title: Text(
                '中文', // Chinese
                style: TextStyle(
                  color: selectedLanguage == '中文' ? Colors.blue : Colors.black,
                ),
              ),
              trailing: selectedLanguage == '中文'
                  ? Icon(Icons.check, color: Colors.blue)
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguage = '中文';
                });
              },
            ),
            ListTile(
              title: Text(
                'Malay',
                style: TextStyle(
                  color:
                      selectedLanguage == 'Malay' ? Colors.blue : Colors.black,
                ),
              ),
              trailing: selectedLanguage == 'Malay'
                  ? Icon(Icons.check, color: Colors.blue)
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguage = 'Malay';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
