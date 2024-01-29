import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/core/core/config/app_consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? name;
  String? sureName;
  String? phone;
  File? image;

  Future<void> getDataFromStorage() async {
    const storage = FlutterSecureStorage();
    name = await storage.read(key: AppConsts.name);
    sureName = await storage.read(key: AppConsts.sureName);
    phone = await storage.read(key: AppConsts.phone);

    setState(() {});
  }

  @override
  void initState() {
    getDataFromStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: image != null
                      ? Image.file(image!)
                      : Text('${name?[0]} ${sureName?[0]}'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 16,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        final ImagePicker imagePicker = ImagePicker();
                        final pickedImage = await imagePicker.pickImage(
                          source: ImageSource.gallery,
                        );

                        try {
                          image = File(pickedImage!.path);
                          setState(() {});
                        } catch (e) {}
                      },
                      icon: const Icon(
                        Icons.camera,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('$name $sureName'),
            Text('$phone'),
          ],
        ),
      ),
    );
  }
}
