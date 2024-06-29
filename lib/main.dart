import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kSchemeColor = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 91, 49, 169),
);

var kDarkThemeColor = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 2, 27, 33),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkThemeColor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkThemeColor.primaryContainer,
          foregroundColor: kDarkThemeColor.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kDarkThemeColor.secondaryContainer.withAlpha(0),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kDarkThemeColor.onPrimaryContainer,
            backgroundColor: kDarkThemeColor.primaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kSchemeColor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kSchemeColor.onPrimaryContainer,
          foregroundColor: kSchemeColor.onPrimary,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kSchemeColor.primaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kSchemeColor.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kSchemeColor.onSecondaryContainer,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
