import 'package:flutter/material.dart';

import 'res.dart';
import 'res_ext.dart';

class FButtonThemeData extends ButtonThemeData {
  FButtonThemeData()
      : super(
          minWidth: 0,
          height: FRes.dimens().heightButton,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          shape: RoundedRectangleBorder(
            borderRadius: FBorderRadiusCorner(),
          ),
          buttonColor: FRes.colors().mainColor,
          disabledColor: FRes.colors().mainColor.withOpacity(0.6),
        );
}

class FAppBarTheme extends AppBarTheme {
  FAppBarTheme()
      : super(
          color: FRes.titleBar().backgroundColor,
          brightness: FRes.titleBar().brightness,
        );
}
