import 'dart:io'; // Import for displaying the captured image
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:now_vision/views/Inspection_Screens/new_inspection3.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';

class Inspection2 extends StatefulWidget {
  @override
  _Inspection2State createState() => _Inspection2State();
}

class _Inspection2State extends State<Inspection2> {
  CameraController? _cameraController;
  Future<void>? _initializeControllerFuture;
  String? _imagePath; // Store captured image path
  List<CameraDescription>? _cameras;
  int _selectedCameraIndex = 0; // Track which camera is active

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _selectedCameraIndex = 0; // Start with the first camera
    await _setCamera(_cameras![_selectedCameraIndex]);
  }

  Future<void> _setCamera(CameraDescription camera) async {
    _cameraController = CameraController(
      camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _cameraController!.initialize();
    await _initializeControllerFuture;

    if (mounted) {
      setState(() {}); // Refresh UI after initializing camera
    }
  }

  Future<void> _captureImage() async {
    try {
      await _initializeControllerFuture;
      final image = await _cameraController!.takePicture();

      if (mounted) {
        setState(() {
          _imagePath = image.path; // Store captured image path
        });
      }
    } catch (e) {
      print("Error capturing image: $e");
    }
  }

  void _switchCamera() async {
    if (_cameras != null && _cameras!.length > 1) {
      _selectedCameraIndex = (_selectedCameraIndex + 1) % _cameras!.length;
      await _setCamera(_cameras![_selectedCameraIndex]);
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(text: 'Start new Inspection'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            InspectionWidget(
              text: 'Capture Image',
              image: Image.asset('assets/images/Progress_indicator2.png'),
            ),
            SizedBox(height: 15.0),
            Container(
              child: _imagePath == null
                  ? (_cameraController == null ||
                          !_cameraController!.value.isInitialized
                      ? Center(child: CircularProgressIndicator())
                      : CameraPreview(_cameraController!))
                  : Image.file(File(_imagePath!), fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.image, size: 40),
                    onPressed: () {
                      // Open gallery logic here
                    },
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: _captureImage,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.camera, color: Colors.white, size: 30),
                    ),
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    icon: Icon(Icons.flip_camera_ios, size: 40),
                    onPressed: _switchCamera, // Flip camera function
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            BlueColorFullWidthButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Inspection3(),
                  ),
                );
              },
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
