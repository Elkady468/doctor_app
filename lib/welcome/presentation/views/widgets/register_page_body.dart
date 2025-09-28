import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/function/show_snak_bar.dart';
import 'package:doctor_app/feature/home/presentation/views/home_view.dart';
import 'package:doctor_app/welcome/presentation/manager/Register_cubit/register_cubit.dart';
import 'package:doctor_app/welcome/presentation/views/login_page.dart';
import 'package:doctor_app/welcome/presentation/views/widgets/custom_button.dart';
import 'package:doctor_app/welcome/presentation/views/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show UserCredential, FirebaseAuth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPageBody extends StatefulWidget {
  RegisterPageBody({super.key});

  @override
  State<RegisterPageBody> createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<RegisterPageBody> {
  String? name, email, phoneNumber, password;

  bool isLoading = false;
  bool isScureText = true;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccess) {
          isLoading = false;
          ShowSnakBar(context, "Success Register ,Now You Can Login");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginPage();
              },
            ),
          );
        } else if (state is RegisterFailure) {
          isLoading = false;
          ShowSnakBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          //     color: Colors.orange,
          inAsyncCall: isLoading,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    SvgPicture.asset(Assets.Klogo),

                    SizedBox(height: 100),
                    Customtextfield(
                      hint: "Full Name",
                      icon: Icons.person,
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                    Customtextfield(
                      hint: "Valied Email",
                      icon: Icons.email,
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    Customtextfield(
                      maxLength: true,
                      hint: "Phone Number",
                      icon: Icons.phone_iphone_outlined,
                      onChanged: (value) {
                        phoneNumber = value;
                      },
                    ),
                    Customtextfield(
                      onTapSuffixIcon: () {
                        isScureText = !isScureText;
                        setState(() {});
                      },
                      obscureText: isScureText,
                      hint: "Password",
                      icon: isScureText
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(height: 50),
                    CustomButton(
                      label: "Register",
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<RegisterCubit>(context).RegisterUser(
                            email: email!,
                            password: password!,
                            name: name!,
                            phoneNumber: phoneNumber!,
                          );
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeView();
                            },
                          );
                        }
                      },
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already a member ",
                          style: TextStyle(
                            color: Color(0xff677294),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> RegisterUser() async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);

    String uid = userCredential.user!.uid;
    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      "FullName": name,
      "PhoneNumber": phoneNumber,
      "Email": email,
      "createdAt": FieldValue.serverTimestamp(),
    });
    log("✅ User data saved in Firestore with UID: $uid");
  }
}
