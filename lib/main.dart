import 'package:curriculum_vitae/config/theme/app_theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: themeMode == ThemeMode.dark
          ? AppTheme.dark().getTheme()
          : AppTheme.light().getTheme(),
      home: MainScreen(
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
