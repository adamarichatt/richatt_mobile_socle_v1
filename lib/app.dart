import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:richatt_mobile_socle_v1/features/authentication/screens/onboarding/onboarding.dart';
import 'package:richatt_mobile_socle_v1/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
