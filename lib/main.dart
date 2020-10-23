import 'package:flutter/material.dart';

import 'app_config/app_routes.dart';
import 'app_config/app_size_config.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // BuildContext context;
  // BuildContext get getBContext => this.context;
  // var shopBox = Hive.openBox(HiveConst.shopBox);
  @override
  Widget build(BuildContext context) {
    // this.context = context;

    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(builder: (context, orientation) {
        AppSizeConfig().init(constraints);
        /*SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);*/
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MClass',
          initialRoute: AppRoutes.videoScreen,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      }),
    );
  }

}

