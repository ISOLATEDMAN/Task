import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangalamaitask/bloc/image_picker_bloc.dart';
import 'package:mangalamaitask/screens/BNB.dart';
import 'package:mangalamaitask/screens/auths/login.dart';
import 'package:mangalamaitask/screens/auths/sign_up.dart';
import 'package:mangalamaitask/utils/image_picker_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(ImagePickerUtils()),
      child: MaterialApp(
        routes: {
          '/login': (context) => Login(),
          '/home': (context) => Home(),
          '/signup': (context) => SignUp()
        },
        home: Login(),
      ),
    );
  }
}
