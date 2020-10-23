
import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

class AppSizeConfig {
  static MediaQueryData _mediaQueryData;
  static double navigationBarHeight;
  static double statusBarHeight;
  static double screenWidth;
  static double screenHeight;
  static double imageHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double safeAreaHorizontal;
  static double safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  static double textMultiplier;
  static double imageSizeMultiplier;

  static double pv0;
  static double pv1;
  static double pv2;
  static double pv4;
  static double pv5;
  static double pv6;
  static double pv7;
  static double pv8;
  static double pv10;
  static double pv12;
  static double pv14;
  static double pv15;
  static double pv16;
  static double pv18;
  static double pv19;
  static double pv20;
  static double pv22;
  static double pv23;
  static double pv24;
  static double pv25;
  static double pv28;
  static double pv29;
  static double pv30;
  static double pv32;
  static double pv35;
  static double pv40;
  static double pv45;
  static double pv48;
  static double pv50;
  static double pv55;
  static double pv60;
  static double pv65;
  static double pv70;
  static double pv75;
  static double pv80;
  static double pv90;
  static double pv100;
  static double pv120;
  static double pv129;
  static double pv130;
  static double pv140;
  static double pv150;
  static double pv160;
  static double pv170;
  static double pv180;
  static double pv200;
  static double pv220;
  static double pv250;
  static double pv280;
  static double pv300;
  static double pv450;
  static double pv500;
  static double pv520;
  static double pv540;
  static double pv550;

  // horizontal
  static double pxH0;
//  static double pxH1;
  static double pxH2;
  static double pxH3;
//  static double pxH4;
  static double pxH5;
//  static double pxH6;
//  static double pxH7;
//  static double pxH8;
//  static double pxH9;
  static double pxH10;
//  static double pxH11;
//  static double pxH12;
//  static double pxH13;
//  static double pxH14;
  static double pxH15;
//  static double pxH16;
//  static double pxH17;
//  static double pxH18;
//  static double pxH19;
  static double pxH20;
  static double pxH30;
  static double pxH35;
  static double pxH40;
  static double pxH45;
  static double pxH50;
  static double pxH60;
  static double pxH100;
  static double pxH108;


  static double font5px;
  static double font6px;
  static double font7px;
  static double font8px;
  static double font10px;
  static double font12px;
  static double font14px;
  static double font15px;
  static double font16px;
  static double font17px;
  static double font18px;
  static double font20px;
  static double font21px;
  static double font22px;
  static double font23px;
  static double font24px;
  static double font25px;
  static double font28px;
  static double font30px;
  static double font35px;
  static double font40px;
  static double font45px;

  void init(BoxConstraints constraints) async {
//    _mediaQueryData = MediaQuery.of(context)
//    navigationBarHeight = _mediaQueryData.padding.bottom;
//    statusBarHeight = _mediaQueryData.padding.top;

    screenWidth = constraints.minWidth;
    screenHeight = constraints.maxHeight;

    var dividingFactor = await calcDividingFactor(screenHeight,screenWidth);

    blockSizeHorizontal = screenWidth / dividingFactor;
    blockSizeVertical = screenHeight / dividingFactor;

//    safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
//    safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
//    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
//    safeBlockVertical = (screenHeight - safeAreaVertical) / 100;

    textMultiplier = blockSizeVertical;
    imageSizeMultiplier = blockSizeHorizontal;

    pv0 = (AppSizeConfig.blockSizeVertical * 0.0);
    pv1 = (AppSizeConfig.blockSizeVertical * 0.15);
    pv2 = (AppSizeConfig.blockSizeVertical * 0.29);
    pv4 = (AppSizeConfig.blockSizeVertical * 0.57);
    pv5 = (AppSizeConfig.blockSizeVertical * 0.71);
    pv6 = (AppSizeConfig.blockSizeVertical * 0.85);
    pv7 = (AppSizeConfig.blockSizeVertical * 0.99);
    pv8 = (AppSizeConfig.blockSizeVertical * 1.13);
    pv10 = (AppSizeConfig.blockSizeVertical * 1.41);
    pv12 = (AppSizeConfig.blockSizeVertical * 1.69);
    pv14 = (AppSizeConfig.blockSizeVertical * 1.97);
    pv15 = (AppSizeConfig.blockSizeVertical * 2.11);
    pv16 = (AppSizeConfig.blockSizeVertical * 2.25);
    pv18 = (AppSizeConfig.blockSizeVertical * 2.53);
    pv19 = (AppSizeConfig.blockSizeVertical * 2.67);
    pv20 = (AppSizeConfig.blockSizeVertical * 2.81);
    pv22 = (AppSizeConfig.blockSizeVertical * 3.09);
    pv23 = (AppSizeConfig.blockSizeVertical * 3.24);
    pv24 = (AppSizeConfig.blockSizeVertical * 3.38);
    pv25 = (AppSizeConfig.blockSizeVertical * 3.52);
    pv28 = (AppSizeConfig.blockSizeVertical * 3.94);
    pv29 = (AppSizeConfig.blockSizeVertical * 4.08);
    pv30 = (AppSizeConfig.blockSizeVertical * 4.22);
    pv32 = (AppSizeConfig.blockSizeVertical * 4.50);
    pv35 = (AppSizeConfig.blockSizeVertical * 4.92);
    pv40 = (AppSizeConfig.blockSizeVertical * 5.62);
    pv45 = (AppSizeConfig.blockSizeVertical * 6.33);
    pv48 = (AppSizeConfig.blockSizeVertical * 6.75);
    pv50 = (AppSizeConfig.blockSizeVertical * 7.03);
    pv55 = (AppSizeConfig.blockSizeVertical * 7.77);
    pv60 = (AppSizeConfig.blockSizeVertical * 8.43);
    pv65 = (AppSizeConfig.blockSizeVertical * 9.13);
    pv70 = (AppSizeConfig.blockSizeVertical * 9.84);
    pv75 = (AppSizeConfig.blockSizeVertical * 10.54);
    pv80 = (AppSizeConfig.blockSizeVertical * 11.24);
    pv90 = (AppSizeConfig.blockSizeVertical * 12.65);
    pv100 = (AppSizeConfig.blockSizeVertical * 14.05);
    pv120 = (AppSizeConfig.blockSizeVertical * 16.86);
    pv129 = (AppSizeConfig.blockSizeVertical * 18.12);
    pv130 = (AppSizeConfig.blockSizeVertical * 18.26);
    pv140 = (AppSizeConfig.blockSizeVertical * 19.67);
    pv150 = (AppSizeConfig.blockSizeVertical * 21.07);
    pv160 = (AppSizeConfig.blockSizeVertical * 21.48);
    pv180 = (AppSizeConfig.blockSizeVertical * 25.29);
    pv200 = (AppSizeConfig.blockSizeVertical * 28.11);
    pv220 = (AppSizeConfig.blockSizeVertical * 30.90);
    pv250 = (AppSizeConfig.blockSizeVertical * 35.12);
    pv280 = (AppSizeConfig.blockSizeVertical * 39.33);
    pv300 = (AppSizeConfig.blockSizeVertical * 42.19);
    pv300 = (AppSizeConfig.blockSizeVertical * 42.19);
    pv450 = (AppSizeConfig.blockSizeVertical * 63.21);
    pv500 = (AppSizeConfig.blockSizeVertical * 70.25);
    pv520 = (AppSizeConfig.blockSizeVertical * 72.99);
    pv540 = (AppSizeConfig.blockSizeVertical * 75.85);
    pv550 = (AppSizeConfig.blockSizeVertical * 77.25);

    // horizontal values
    pxH0 = (AppSizeConfig.blockSizeHorizontal * 0.0);
//    pxH1 = (AppSizeConfig.blockSizeHorizontal * 0.28);
    pxH2 = (AppSizeConfig.blockSizeHorizontal * 0.56);
    pxH3 = (AppSizeConfig.blockSizeHorizontal * 0.84);
//    pxH4 = (AppSizeConfig.blockSizeHorizontal * 1.12);
    pxH5 = (AppSizeConfig.blockSizeHorizontal * 1.39);
//    pxH6 = (AppSizeConfig.blockSizeHorizontal * 1.67);
//    pxH7 = (AppSizeConfig.blockSizeHorizontal * 1.95);
//    pxH8 = (AppSizeConfig.blockSizeHorizontal * 2.23);
//    pxH9 = (AppSizeConfig.blockSizeHorizontal * 2.5);
    pxH10 = (AppSizeConfig.blockSizeHorizontal * 2.78);
//    pxH11 = (AppSizeConfig.blockSizeHorizontal * 3.06);
//    pxH12 = (AppSizeConfig.blockSizeHorizontal * 3.34);
//    pxH13 = (AppSizeConfig.blockSizeHorizontal * 3.62);
//    pxH14 = (AppSizeConfig.blockSizeHorizontal * 3.89);
    pxH15 = (AppSizeConfig.blockSizeHorizontal * 4.17);
//    pxH16 = (AppSizeConfig.blockSizeHorizontal * 4.45);
//    pxH17 = (AppSizeConfig.blockSizeHorizontal * 4.73);
//    pxH18 = (AppSizeConfig.blockSizeHorizontal * 5.0);
//    pxH19 = (AppSizeConfig.blockSizeHorizontal * 5.28);
    pxH20 = (AppSizeConfig.blockSizeHorizontal * 5.56);
    pxH30 = (AppSizeConfig.blockSizeHorizontal * 8.34);
    pxH35 = (AppSizeConfig.blockSizeHorizontal * 9.73);
    pxH40 = (AppSizeConfig.blockSizeHorizontal * 11.12);
    pxH45 = (AppSizeConfig.blockSizeHorizontal * 12.5);
    pxH50 = (AppSizeConfig.blockSizeHorizontal * 13.89);
    pxH60 = (AppSizeConfig.blockSizeHorizontal * 16.67);
    pxH100 = (AppSizeConfig.blockSizeHorizontal * 27.78);
    pxH108 = (AppSizeConfig.blockSizeHorizontal * 30.0);

    // original xd size: 20; used in otp, forget password, reset password
    font5px = (AppSizeConfig.textMultiplier * 0.5);
    font6px = (AppSizeConfig.textMultiplier * 0.85);
    font7px = (AppSizeConfig.textMultiplier * 0.99);
    font8px = (AppSizeConfig.textMultiplier * 1.13);
    font10px = (AppSizeConfig.textMultiplier * 1.41);
    font12px = (AppSizeConfig.textMultiplier * 1.69);
    font14px = (AppSizeConfig.textMultiplier * 1.97);
    font15px = (AppSizeConfig.textMultiplier * 2.11);
    font16px = (AppSizeConfig.textMultiplier * 2.25);
    font17px = (AppSizeConfig.textMultiplier * 2.39);
    font18px = (AppSizeConfig.textMultiplier * 2.53);
    font20px = (AppSizeConfig.textMultiplier * 2.81);
    font21px = (AppSizeConfig.textMultiplier * 2.95);
    font22px = (AppSizeConfig.textMultiplier * 3.09);
    font23px = (AppSizeConfig.textMultiplier * 3.24);
    font24px = (AppSizeConfig.textMultiplier * 3.38);
    font25px = (AppSizeConfig.textMultiplier * 3.52);
    font28px = (AppSizeConfig.textMultiplier * 3.94);
    font30px = (AppSizeConfig.textMultiplier * 4.5);
    font35px = (AppSizeConfig.textMultiplier * 4.92);
    font40px = (AppSizeConfig.textMultiplier * 5.62);
    font45px = (AppSizeConfig.textMultiplier * 6.33);
  }


  isTabletFun(double screenHeight, double screenWidth) {
    var diagonal = sqrt(
        (screenWidth * screenWidth) +
            (screenHeight * screenHeight)
    );

    /*
    print(
      'size: ${size.width}x${size.height}\n'
      'pixelRatio: ${query.devicePixelRatio}\n'
      'pixels: ${size.width * query.devicePixelRatio}x${size.height * query.devicePixelRatio}\n'
      'diagonal: $diagonal'
    );
    */

    var isTablet = diagonal > 1100.0;
    return isTablet;
  }


  calcDividingFactor(double screenHeight, double screenWidth) async {
    //ALog.d("=================> screenHeight ",""+screenHeight.toString());
    var isTablet = await isTabletFun(screenHeight,screenWidth);
    //ALog.d("=================> screenIsTablet ",""+isTablet.toString());
    if(isTablet){
      return 150;
    }else {
      if (screenHeight < 850) {
        return 100;
      } else if (screenHeight < 1200) {
        return 110;
      } else {
        return 115;
      }
    }
  }

}

getSize(double d) {
  return AppSizeConfig.blockSizeVertical*d;
}
