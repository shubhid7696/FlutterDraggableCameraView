import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_class/camera/camera_state.dart';
import 'package:video_player/video_player.dart';

class VideoPageState<T extends StatefulWidget> extends CameraPageState<T> with WidgetsBindingObserver {


  FlickManager flickManager;
  static const methodChanel  = MethodChannel("Android_DeviceType");
  bool isAndroidTv = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    if(Platform.isAndroid){
      initMethodChannel();
    }
    initFlickManager();
  }

  void initFlickManager() async {
    debugPrint("#### initFlickManager");
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4"),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      flickManager.dispose();
    } else if (state == AppLifecycleState.resumed) {
      if (flickManager == null) {
        initFlickManager();
        flickManager.flickControlManager.seekTo(Duration(seconds: 30));
      } else {
        flickManager.flickControlManager.seekTo(Duration(seconds: 10));
      }
    }
  }

  void initMethodChannel() async {
    isAndroidTv = await methodChanel.invokeMethod<bool>('checkForTv');
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  Widget videoPlayerView() {
    return FlickVideoPlayer(
      flickManager: flickManager,
      preferredDeviceOrientation: isAndroidTv ?  [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft
      ] :  [ ],
      flickVideoWithControls: FlickVideoWithControls(
        controls: FlickPortraitControls(),
        videoFit: BoxFit.fitWidth,
      ),
      flickVideoWithControlsFullscreen: FlickVideoWithControls(
        controls: FlickLandscapeControls(),
      ),
    );
  }
}