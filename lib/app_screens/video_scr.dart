
import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_class/app_config/app_size_config.dart';
import 'package:m_class/video/video_state.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {

  @override
  _VideoScreenState createState() => _VideoScreenState();

}

class _VideoScreenState extends VideoPageState<VideoScreen> with WidgetsBindingObserver{

  double top = 0;
  double left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            videoPlayerView(),
            Draggable(child: Container(
              padding: EdgeInsets.only(top: top, left: left),
              child: dragItem(),
            ),
                feedback: Container(
                  padding: EdgeInsets.only(top: top, left: left),
                  child: dragItem(),
                ),
                childWhenDragging: Container(
                  padding: EdgeInsets.only(top: top, left: left),
                  child: dragItem(),
                ),
                onDragCompleted: () {},
                onDragEnd: (drag) {
                  setState(() {
                    if(top > drag.offset.dy){
                      top = top + drag.offset.dy < 0 ? 0 : (top + drag.offset.dy- AppSizeConfig.pv25);
                      left = left + drag.offset.dx < 0 ? 0 : (left + drag.offset.dx);
                      debugPrint("===============================");
                    }else {
                      top = top + drag.offset.dy < 0 ? 0 : (top + drag.offset.dy);
                      left = left + drag.offset.dx < 0 ? 0 : (left + drag.offset.dx);
                      debugPrint("++++++++++++++++++++++++++++++++");
                    }
                  });
                },)
          ],
        ),
      ),
    );
  }

  dragItem() {
    return Container(
      height: AppSizeConfig.pv150,
      width: AppSizeConfig.pv90,
      color: Colors.red,
      child: cameraPreviewWidget(),
    );
  }

}