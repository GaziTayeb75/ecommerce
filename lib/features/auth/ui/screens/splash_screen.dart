import 'package:ecommerce/app/app_configs.dart';
import 'package:ecommerce/features/auth/ui/screens/sign_in_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/sign_up_screen.dart';
import 'package:ecommerce/features/common/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:ecommerce/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

Future<void> _moveToNextScreen() async {
  await Future.delayed(const Duration(seconds: 2));
  Navigator.pushReplacementNamed(context, MainBottomNavBarScreen.name);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              AppLogo(),
              Spacer(),
              CircularProgressIndicator(),
              const SizedBox(height: 16,),
              Text('${AppLocalizations.of(context)!.version}Version${AppConfigs.currentAppVersion}')
            ],
          ),
        ),
      ) ,
    );
  }
}


