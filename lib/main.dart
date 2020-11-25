import 'package:survey/locator.dart';
import 'package:survey/services/navigation_service.dart';
import 'package:survey/ui/router.dart';
import 'package:survey/ui/views/startup_view.dart';
import 'package:flutter/material.dart';

// add crashnalytics
import 'dart:async';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';

// import flutter services
import 'package:flutter/services.dart';

void main() {

  setupLocator();

  runZoned(
        () {
      runApp(MyApp());
    },
    // onError: Crashlytics.instance.recordError
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lock Orientation Portait Only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Survey PPTIK',
      home: StartUpView(),
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: generateRoute,
    );
  }
}
