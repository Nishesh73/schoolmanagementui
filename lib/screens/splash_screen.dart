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
      Future.delayed(const Duration(milliseconds: 3000), () {

        if (mounted) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()));
        }

      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width:95, height:95,
            
            child: Image.asset("assets/icon/group.png", 
            fit: BoxFit.contain,
            
            )),
          const Text(
            "SCHOOL",
            style: TextStyle(
                fontFamily: "park",
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const Text("School Management App")
        ],
                  ),
       
      ),
    );
  }
}
