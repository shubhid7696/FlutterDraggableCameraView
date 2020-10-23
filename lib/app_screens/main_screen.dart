
import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_class/app_config/app_size_config.dart';
import 'package:m_class/ui_components/button_widgets.dart';
import 'package:video_player/video_player.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State {

  static const methodChanel  = MethodChannel("Android_DeviceType");

  @override
  void initState() {
    super.initState();
    if(Platform.isAndroid){
      initMethodChannel();
    }

  }

  void initMethodChannel() async {
    bool type = await methodChanel.invokeMethod<bool>('checkForTv');
    debugPrint("======================> ${type}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
            ),
            SizedBox(
              height: AppSizeConfig.pv50,),
            Wrap(children: <Widget>[
              mainButton("Play Video",(){})
            ],),
            SizedBox(
              height: AppSizeConfig.pv50,),
            Wrap(children: <Widget>[
              mainButton("Firebase Auth",(){}),
            ],),
            SizedBox(
              height: AppSizeConfig.pv50,),
          ],
        ),
      ),
    );
  }

}