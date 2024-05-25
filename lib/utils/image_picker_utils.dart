 

import 'package:image_picker/image_picker.dart';

class ImagePickerUtils{
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> cameracapture()async{
    final XFile? file = await _picker.pickImage(source: ImageSource.camera);
    return file;
  }

    Future<XFile?> gallercapture()async{
    final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
    return file;
  }
}