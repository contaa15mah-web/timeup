import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flutter_dash,
              size: 120,
              color: Colors.white,
            )
                .animate()
                .scale(duration: 800.ms, curve: Curves.easeOutBack)
                .then()
                .shake(hz: 4, curve: Curves.easeInOutCubic),
            const SizedBox(height: 24),
            const Text(
              'Flutter App',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
                .animate()
                .fadeIn(delay: 400.ms, duration: 800.ms)
                .slideY(begin: 0.3, end: 0),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
                .animate()
                .fadeIn(delay: 800.ms),
          ],
        ),
      ),
    );
  }
}
