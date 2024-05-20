import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle medium16Black(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle medium18Black(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle medium16grey(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle medium20(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle regular24(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w400,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle extraBold24(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w800,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle bold24(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.bold,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle bold34(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 34),
      fontWeight: FontWeight.bold,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle medium14(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle bold40(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 40),
      fontWeight: FontWeight.bold,
      fontFamily: 'DM Sans',
    );
  }

  static TextStyle medium34(context) {
    return TextStyle(
      fontSize: getResposiveFontSize(context, fontSize: 34),
      fontWeight: FontWeight.w500,
      fontFamily: 'DM Sans',
    );
  }
}

double getResposiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  //طريقه علشان اخلى الفونت يشتغل من غير كونتكست
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  // علشان استخدم الميديا كويرى لازم اعمل كونتكست فانا بدل ما استخدم الاستيل ممكن اخليها فانكشن
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    //ألنقط دى اللى هيتغير عندها حجم الخط
    return width / 600;
  } else if (width < 1400) {
    return width / 1200;
  } else {
    return width / 1920;
  }
}
