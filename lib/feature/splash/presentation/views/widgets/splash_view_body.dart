import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/start/views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController logoAnimationController;
  late AnimationController textAnimationController;

  late Animation<Offset> logoSlidingAnimation;
  late Animation<Offset> textSlidingAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    NavigatorToWelcomeView();
  }

  void initAnimation() {
    // Animation للـ Logo
    logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    logoSlidingAnimation =
        Tween<Offset>(
          begin: const Offset(0, -2), // نازل من فوق
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: logoAnimationController,
            curve: Curves.easeOut,
          ),
        );

    // Animation للـ Text
    textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    textSlidingAnimation =
        Tween<Offset>(
          begin: const Offset(0, 2), // طالع من تحت
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: textAnimationController,
            curve: Curves.easeOut,
          ),
        );

    // نشغل الاتنين مع بعض
    logoAnimationController.forward();
    textAnimationController.forward();
  }

  @override
  void dispose() {
    logoAnimationController.dispose();
    textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SlideTransition(
          position: logoSlidingAnimation,
          child: Center(child: SvgPicture.asset(Assets.Klogo)),
        ),
        const SizedBox(height: 10),
        SlideTransition(
          position: textSlidingAnimation,
          child: Text("Doctor Hunt", style: Styles.Bold25(context)),
        ),
      ],
    );
  }

  void NavigatorToWelcomeView() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WelcomeView();
          },
        ),
      );
    });
  }
}



// import 'package:doctor_app/core/utils/constant.dart';
// import 'package:doctor_app/core/utils/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody>with TickerProviderStateMixin {
// late AnimationController logoAnimationController;
//   late Animation<Offset> logoSlidingAnimation;



//   void initAnimation() {
//     logoAnimationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 2),
//     );

//     logoSlidingAnimation = Tween<Offset>(
//       begin: const Offset(0, -2),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: logoAnimationController,
//       curve: Curves.easeOut,
//     ));

//     logoAnimationController.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Center(child: SvgPicture.asset(kLogo)),
//         SizedBox(height: 10),
//         Text("Doctor Hunt", style: Styles.Bold25(context)),
//       ],
//     );
//   }
// }
