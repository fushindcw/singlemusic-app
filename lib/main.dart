import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:singlemusic/routes/app_pages.dart';
import 'package:singlemusic/routes/app_routes.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.launch,
    );
  }
}
