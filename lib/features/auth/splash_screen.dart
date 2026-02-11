import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../../store/session_store.dart";
import "../../shared/widgets.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _boot();
  }

  Future<void> _boot() async {
    final session = context.read<SessionStore>();
    await session.initialize();
    if (!mounted) return;
    if (session.accessToken != null) {
      if (session.hasPin) {
        Navigator.of(context).pushReplacementNamed("/home");
      } else {
        Navigator.of(context).pushReplacementNamed("/security-setup");
      }
    } else {
      Navigator.of(context).pushReplacementNamed("/auth");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: "KOBPAY",
      showBack: false,
      child: Center(
        child: CircularProgressIndicator()
      )
    );
  }
}
