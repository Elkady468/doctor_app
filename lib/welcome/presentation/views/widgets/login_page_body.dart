import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/function/show_snak_bar.dart';
import 'package:doctor_app/feature/home/presentation/views/home_view.dart';
import 'package:doctor_app/welcome/presentation/manager/login_cubits/login_cubit.dart';
import 'package:doctor_app/welcome/presentation/manager/login_cubits/login_state.dart';
import 'package:doctor_app/welcome/presentation/views/register_page.dart';
import 'package:doctor_app/welcome/presentation/views/widgets/custom_button.dart';
import 'package:doctor_app/welcome/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPageBody extends StatefulWidget {
  LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  String? name, email, phoneNumber, password;

  bool isLoading = false;

  bool isScureText = true;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          isLoading = false;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeView();
              },
            ),
          );
        } else if (state is LoginFailure) {
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
                    SizedBox(height: 200),
                    Customtextfield(
                      hint: "Email",
                      icon: Icons.email,
                      onChanged: (value) {
                        email = value;
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
                    SizedBox(height: MediaQuery.sizeOf(context).height * .10),
                    CustomButton(
                      label: "Login",
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<LoginCubit>(
                            context,
                          ).LoginUser(email: email!, password: password!);
                          // final prefs = await SharedPreferences.getInstance();
                          // prefs.setBool('isLoggedIn', true);
                        }
                      },
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ",
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
                                  return RegisterPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Register",
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
}
