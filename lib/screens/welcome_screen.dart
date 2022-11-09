import 'package:flutter/material.dart';
import 'package:flutter_flash_chat/screens/login_screen.dart';
import 'package:flutter_flash_chat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    // controller =
    //     AnimationController(duration: const Duration(seconds: 1), vsync: this);
    // animation =
    //     ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    // controller.forward();
    // controller.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //.withOpacity(controller.value),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54,
                      ),
                      speed: const Duration(milliseconds: 100),
                    )
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 2000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            RoundedButton(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              buttonColor: Colors.lightBlueAccent,
              buttonTitle: 'Log in',
            ),
            RoundedButton(
              onTap: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              buttonColor: Colors.blueAccent,
              buttonTitle: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
