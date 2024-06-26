import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

import 'app.dart';

Future<void> main() async {
  // --------------Add widgets Binding------------------------
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //-------------- GetX local Storage------------------------
  await GetStorage.init();

  //--------------Await Native Splash-------------------------
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // -------------Initialize Firebase------------------------
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  // once initialisation of any platform is created whether web , android or ios , using the then keyword we will initialise Authentication repository to redirect user to any screen as per the need

  // Initialize Authentication
  runApp(const App());
}
