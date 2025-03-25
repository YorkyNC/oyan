import 'package:flutter/material.dart';
import 'package:oyan/gen/assets.gen.dart';
import 'package:oyan/src/core/localization/generated/l10n.dart';
import 'package:oyan/src/core/theme/colors.dart';
import 'package:oyan/src/core/theme/theme.dart';
import 'package:oyan/src/core/theme/typography.dart';
import 'package:oyan/src/core/utils/constants/app_icons.dart';

extension BuildContextExtension on BuildContext {
  S get loc => S.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get userGestureInProgress => Navigator.of(this).userGestureInProgress;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get bottomViewInset => MediaQuery.of(this).viewInsets.bottom;

  $AssetsAppImagesGen get assetImages => Assets.appImages;
  $AssetsIconsGen get assetIcons => Assets.icons;
  AppColors get colors => AppTheme.colors;
  FigmaTextStyles get typography => AppTheme.typography;
  AppIcons get icons => AppTheme.icons;
}
