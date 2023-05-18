import 'dart:io';

import 'package:arabica_armour_mobile/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';


class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File? _image;

  final imagePicker = ImagePicker();

  Future<void> getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);

    setState(() {
      _image = image?.path != null ? File(image!.path) : null;
    });
  }

  int currentTab = 0;
  // final List<Widget> screens = [Chat(), DashBoard(), Profile(), Setting()];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = RecentPage();




  @override
  Widget build(BuildContext context) {

    final double iconSize = MediaQuery.of(context).size.width * 0.07; // calculate icon size based on screen width
    
    return Scaffold(
      body: Center(
        child: _image == null ? Text("Image not selected") : Image.file(_image!),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: getImage,
      //   backgroundColor: Colors.blue,Color.fromARGB(1, 159, 241, 109)
      //   child: Icon(Icons.camera_alt),),

      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.green,
        onPressed: getImage,
        child: Icon(Icons.camera_alt, size: iconSize * 1.5),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
       


      
    );
  }
}