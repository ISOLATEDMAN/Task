import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mangalamaitask/utils/image_picker_utils.dart';


part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {

final ImagePickerUtils imagePickerUtils;
ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerState(file: null)) {
    on<ImagePick>(CameraCapt);
    on<GalleryPick>(GallerCapt);
  }

  void CameraCapt(ImagePick event,Emitter<ImagePickerState>states)async{
    XFile? file = await imagePickerUtils.cameracapture();
    emit(state.copyWith(file: file));
  }

  void GallerCapt(GalleryPick event,Emitter<ImagePickerState>emit)async{
    XFile? file = await imagePickerUtils.gallercapture();
    emit(state.copyWith(file: file));
  }
}
