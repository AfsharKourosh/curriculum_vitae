import 'package:curriculum_vitae/config/theme/app_theme.dart';
import 'package:curriculum_vitae/core/enums/app_enums.dart';
import 'package:curriculum_vitae/feature/main/presentation/screen/main_screen.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.dark;
  languageSelect languageApp = languageSelect.en;
  Locale get localeApp => languageApp == languageSelect.en
      ? const Locale('en')
      : const Locale('fa');

  void updateLanguage() {
    setState(() {
      languageApp == languageSelect.en
          ? languageApp = languageSelect.fa
          : languageApp = languageSelect.en;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: localeApp,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: themeMode == ThemeMode.dark
          ? AppTheme.dark().getTheme(localeApp.languageCode)
          : AppTheme.light().getTheme(localeApp.languageCode),
      home: MainScreen(
        updateLanguage: updateLanguage,
        isDark: themeMode == ThemeMode.dark ? true : false,
        updateThemeMode: () {
          setState(() {
            themeMode == ThemeMode.dark
                ? themeMode = ThemeMode.light
                : themeMode = ThemeMode.dark;
          });
        },
      ),
    );
  }
}
