import 'package:flutter/material.dart';
import 'package:schoolmanagementui/screens/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToDashBoard();
  }

  navigateToDashBoard() {
    try {
      Future.delayed(Duration(milliseconds: 3000), () {
        if (mounted) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashboardScreen()));
        }
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/school.jpg"),
            Text(
              "SCHOOL",
              style: TextStyle(
                  fontFamily: "park",
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text("School Management App")
          ],
        ),
      ),
    );
  }
}
