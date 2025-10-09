import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Gruvbox Dark Color Palette (Approximate)
// Source: https://github.com/morhetz/gruvbox
class GruvboxDark {
  static const Color bg = Color(0xFF282828);
  static const Color bg0_h = Color(0xFF1d2021); 
  static const Color bg1 = Color(0xFF3c3836);
  static const Color bg2 = Color(0xFF504945);
  static const Color bg3 = Color(0xFF665c54);
  static const Color bg4 = Color(0xFF7c6f64);

  static const Color fg = Color(0xFFebdbb2); 
  static const Color fg1 = Color(0xFFebdbb2);
  static const Color fg2 = Color(0xFFd5c4a1);
  static const Color fg3 = Color(0xFFbdae93);
  static const Color fg4 = Color(0xFFa89984);

  static const Color red = Color(0xFFcc241d);
  static const Color green = Color(0xFF98971a);
  static const Color yellow = Color(0xFFd79921);
  static const Color blue = Color(0xFF458588);
  static const Color purple = Color(0xFFb16286);
  static const Color aqua = Color(0xFF689d6a);
  static const Color orange = Color(0xFFd65d0e);

  static const Color gray = Color(0xFF928374); 
  static const Color brightRed = Color(0xFFfb4934);
  static const Color brightGreen = Color(0xFFb8bb26);
  static const Color brightYellow = Color(0xFFfabd2f);
  static const Color brightBlue = Color(0xFF83a598);
  static const Color brightPurple = Color(0xFFd3869b);
  static const Color brightAqua = Color(0xFF8ec07c);
  static const Color brightOrange = Color(0xFFfe8019);
}

ThemeData buildGruvboxDarkTheme() 
{
  final baseTheme = ThemeData.dark(); //dark by default

  return baseTheme.copyWith
  (
    brightness: Brightness.dark,
    primaryColor: GruvboxDark.blue,
    scaffoldBackgroundColor: GruvboxDark.bg,
    cardColor: GruvboxDark.bg1,
    dividerColor: GruvboxDark.bg4,
    hintColor: GruvboxDark.fg4, //hint color
    textTheme: GoogleFonts.firaCodeTextTheme(baseTheme.textTheme).copyWith
    ( 
      // Headlines
      displayLarge: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold),
      displaySmall: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold),
      headlineSmall: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold),
      titleLarge: GoogleFonts.firaCode(color: GruvboxDark.fg, fontWeight: FontWeight.bold), // App Bar Title

      // Body Text
      bodyLarge: GoogleFonts.firaCode(color: GruvboxDark.fg1, fontSize: 16), // Main body text
      bodyMedium: GoogleFonts.firaCode(color: GruvboxDark.fg2, fontSize: 14), // Default Text()
      bodySmall: GoogleFonts.firaCode(color: GruvboxDark.fg3, fontSize: 12),

      // Labels, Captions
      labelLarge: GoogleFonts.firaCode(color: GruvboxDark.brightBlue, fontWeight: FontWeight.w500), // Button Text
      labelMedium: GoogleFonts.firaCode(color: GruvboxDark.fg4),
      labelSmall: GoogleFonts.firaCode(color: GruvboxDark.fg4),
      titleMedium: GoogleFonts.firaCode(color: GruvboxDark.fg2), // ListTile title
      titleSmall: GoogleFonts.firaCode(color: GruvboxDark.fg3), // ListTile subtitle
    )
    .apply
    (
      bodyColor: GruvboxDark.fg1, // Default text color
      displayColor: GruvboxDark.fg, // Default headline color
    ),
    colorScheme: const ColorScheme
    (
      brightness: Brightness.dark,
      primary: GruvboxDark.blue,
      onPrimary: GruvboxDark.bg, // Text on primary buttons
      secondary: GruvboxDark.aqua,
      onSecondary: GruvboxDark.bg, // Text on secondary buttons
      error: GruvboxDark.red,
      onError: GruvboxDark.bg, // Text on background
      surface: GruvboxDark.bg1, // Cards, dialogs background
      onSurface: GruvboxDark.fg, // Text on cards
      tertiary: GruvboxDark.yellow,
      onTertiary: GruvboxDark.bg,
    ),
    appBarTheme: const AppBarTheme
    (
      backgroundColor: GruvboxDark.bg1,
      foregroundColor: GruvboxDark.fg, // Title and icons
      elevation: 1,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData
    (
      style: ElevatedButton.styleFrom
      (
        backgroundColor: GruvboxDark.blue,
        foregroundColor: GruvboxDark.bg,
        textStyle: GoogleFonts.firaCode(fontWeight: FontWeight.bold),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
         shape: RoundedRectangleBorder
         (
           borderRadius: BorderRadius.circular(8),
         ),
      ),
    ),
    textButtonTheme: TextButtonThemeData
    (
      style: TextButton.styleFrom
      (
         foregroundColor: GruvboxDark.brightBlue,
         textStyle: GoogleFonts.firaCode(fontWeight: FontWeight.w500),
      ),
    ),
    cardTheme: const CardThemeData(
      color: Colors.grey,
  elevation: 2,
    ),

     listTileTheme: const ListTileThemeData
     (
        iconColor: GruvboxDark.aqua,
     ),
    iconTheme: const IconThemeData
    (
      color: GruvboxDark.aqua, // Default icon color
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData
    (
      backgroundColor: GruvboxDark.orange,
      foregroundColor: GruvboxDark.bg,
    ),
    tooltipTheme: TooltipThemeData
    (
      decoration: BoxDecoration
      (
        color: GruvboxDark.bg3,
        borderRadius: BorderRadius.circular(4),
      ),
      textStyle: const TextStyle(color: GruvboxDark.fg),
    ),
    // Add other theme customizations as needed
  );
}
