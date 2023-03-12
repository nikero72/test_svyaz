import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return const SplashScreenBody();
  }
}

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  void loading(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    context.router.replaceNamed('/main');
  }

  @override
  Widget build(BuildContext context) {
    loading(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Busy Reader',
                style: GoogleFonts.mulish(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    letterSpacing: 0.03,
                    color: const Color.fromRGBO(40, 40, 40, 1)
                )
            ),
            Image.asset('assets/images/splash_screen_image.png')
          ],
        ),
      ),
    );
  }
}

