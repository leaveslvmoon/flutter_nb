import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceUtil {
  /*
  * 以下两行设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，
  * 覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
  */
  static setBarStatus(bool isDarkIcon, {Color color: Colors.white}) {
    if (Platform.isAndroid) {
      if (isDarkIcon) {
        SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
            statusBarColor: color, statusBarIconBrightness: Brightness.dark);
        SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      } else {
        SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
            statusBarColor: color, statusBarIconBrightness: Brightness.light);
        SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      }
    }
  }
}
