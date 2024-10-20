import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  // Simulated variable as a locale storage
  ThemeMode? _themeMode;

  // Should have getter & setter methods
  // We only care about the 'ThemeMode'

  // Getter Method
  /// Should call locale storage, to get saved 'ThemeMode' or
  ///
  /// return 'ThemeMode.Light' for no saved 'ThemeMode' before.
  ///
  /// This method called above 'MaterialApp' root widget
  /// before the splash screen initialized.
  ThemeMode getAppThemeMode() {
    return _themeMode ??= ThemeMode.light;
  }

  // Setter Method
  /// Toggle current 'ThemeMode' from 'ThemeMode.light' to 'ThemeMode.dark' and vice versa
  ///
  /// and update locale storage with new value.
  ///
  /// As sure the value of '_ThemeMode' here will not be null,
  /// because 'getAppThemeMode' method is called on App Start.
  void setAppThemeMode() => emit(_themeMode = (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light);
}
