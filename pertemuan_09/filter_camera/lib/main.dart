import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:filter_camera/screens/camera_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CameraScreen(camera: firstCamera),
    ),
  );
}