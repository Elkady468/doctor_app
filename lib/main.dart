import 'package:doctor_app/feature/home/presentation/views/home_view.dart';
import 'package:doctor_app/feature/splash/presentation/views/splash_view.dart';
import 'package:doctor_app/welcome/presentation/manager/Register_cubit/register_cubit.dart';
import 'package:doctor_app/welcome/presentation/manager/login_cubits/login_cubit.dart';
import 'package:doctor_app/welcome/presentation/manager/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => UserDataCubit()..getUserData()),
      ],

      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
