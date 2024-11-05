import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile/screens/landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    //menunda selama 5 detik sebelum berpindah ke halaman berikutnya
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
              width: 350,
              height: 350,
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 300,
                ),
                Text('ASLABTIF',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b1b1b),
                    )),
                Text('ASLABTIF',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b1b1b),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
