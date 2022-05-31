import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KThemeData {
  static const TextStyle _textStyle = TextStyle(
      fontFamily: 'font',
      color: Color(
        0xffb5b9c5,
      ));

  static overlayStyle(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? _darkOverLay : _darkOverLay;
  }

  static const SystemUiOverlayStyle _darkOverLay = SystemUiOverlayStyle();

  static const SystemUiOverlayStyle _lightOverLay = SystemUiOverlayStyle();

  static ThemeData get light {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.grey,
        elevation: 0,
        systemOverlayStyle: _lightOverLay,
      ),
      fontFamily: _textStyle.fontFamily,
      textTheme: _textThemeLight,
      shadowColor: Colors.black38,
      inputDecorationTheme: _inputDecorationTheme.copyWith(prefixIconColor: Colors.red),
      iconTheme: const IconThemeData(color: Colors.grey),
      dividerTheme: const DividerThemeData(
        color: Color(
          0xffb5b9c5,
        ),
        thickness: .5,
      ),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.grey),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff773389)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.grey[900],
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: _darkOverLay,
        elevation: 0,
      ),
      textTheme: _textThemeDark,
      inputDecorationTheme: _inputDecorationTheme.copyWith(prefixIconColor: Colors.orange),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.orange),
      iconTheme: const IconThemeData(color: Colors.orange),
      buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
      popupMenuTheme: const PopupMenuThemeData(elevation: 0),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff773389)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }

  static const InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    enabledBorder: InputBorder.none,
    border: InputBorder.none,
    disabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
  );

  static final TextTheme _textThemeLight = TextTheme(
    headline1: _textStyle,
    headline2: _textStyle,
    headline3: _textStyle,
    headline4: _textStyle,
    headline5: _textStyle.copyWith(color: const Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: 16),
    headline6: _textStyle.copyWith(color: const Color(0xff9ca1b6), fontWeight: FontWeight.bold, fontSize: 18),
    bodyText1: _textStyle,
    bodyText2: _textStyle,
    subtitle1: _textStyle,
    subtitle2: _textStyle.copyWith(color: const Color(0xffb5b9c5), fontWeight: FontWeight.bold),
    headlineLarge: _textStyle,
    button: _textStyle,
    caption: _textStyle,
    labelMedium: _textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
    overline: _textStyle,
  );
  static final TextTheme _textThemeDark = TextTheme(
    headline1: _textStyle,
    headline2: _textStyle,
    headline3: _textStyle,
    headline4: _textStyle,
    headline5: _textStyle.copyWith(color: const Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: 16),
    headline6: _textStyle.copyWith(color: const Color(0xff9ca1b6), fontWeight: FontWeight.bold, fontSize: 18),
    bodyText1: _textStyle,
    bodyText2: _textStyle,
    subtitle1: _textStyle,
    subtitle2: _textStyle.copyWith(color: const Color(0xffb5b9c5), fontWeight: FontWeight.bold),
    headlineLarge: _textStyle,
    button: _textStyle,
    caption: _textStyle,
    labelMedium: _textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
    overline: _textStyle,
  );
}
