import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mangalamaitask/bloc/image_picker_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  ImageProvider? _image;

  @override
  void initState() {
    super.initState();
    _requestStoragePermission();
  }

  Future<void> _requestStoragePermission() async {
    final storageStatus = await Permission.storage.request();

    if (storageStatus == PermissionStatus.granted) {
      print('Storage permission granted!');
    } else if (storageStatus == PermissionStatus.permanentlyDenied) {
      openAppSettings();
    } else {
      // Handle other permission statuses (optional)
    }
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = FileImage(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state) {
            if(state.file == null){
              return InkWell(
                onTap: () {
                  
                  context.read<ImagePickerBloc>().add(ImagePick());
                },
                child: CircleAvatar(
                  child: Icon(Icons.camera),
                ),
              );
            }
            else{
              return Image.file(File(state.file!.path.toString()));
            }
            },
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Image.asset(
                      'assets/mount.jpg',
                      width: 135.5,
                    ),
                    Image.asset(
                      'assets/mount.jpg',
                      width: 135.5,
                    ),
                    Image.asset(
                      'assets/mount.jpg',
                      width: 135.5,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
