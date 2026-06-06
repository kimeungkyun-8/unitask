import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:unitask/app/theme/app_theme.dart';

@AppThemePreview(group: 'UI 확인', name: 'Chip')
Widget chipPreview() => const Wrap(children: [Chip(label: Text('전체'))]);

final class AppThemePreview extends Preview {
  const AppThemePreview({
    super.name,
    super.brightness,
    super.group,
    super.localizations,
    super.size,
    super.textScaleFactor,
    super.wrapper,
  }) : super(theme: AppThemePreview.themeBuilder);

  static PreviewThemeData themeBuilder() => PreviewThemeData(
    materialLight: AppTheme.light,
    materialDark: AppTheme.dark,
  );
}
