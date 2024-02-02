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

  List<Widget> tabs = const [
    Center(
      child: Text("It's cloudy here"),
    ),
    Center(
      child: Text("It's rainy here"),
    ),
    Center(
      child: Text("It's sunny here"),
    ),
  ];

  int currentIdex = 0;
  @override
  void initState() {
    getDataFromStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Мой профиль',
          style: TextStyle(
            fontSize: 34,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.start,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: image != null
                        ? ClipOval(
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          )
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
            ),
            const SizedBox(
              height: 16,
            ),
            Text('$name $sureName'),
            Text('$phone'),
            DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: TabBar(
                onTap: (value) {
                  currentIdex = value;
                  setState(() {});
                },
                tabs: const [
                  Tab(
                    child: Text('Анализы'),
                  ),
                  Tab(
                    child: Text('Анализы'),
                  ),
                  Tab(
                    child: Text('Анализы'),
                  ),
                ],
              ),
            ),
            tabs[currentIdex],
          ],
        ),
      ),
    );
  }
}
