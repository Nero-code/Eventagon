import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vollect/core/constants.dart';
import 'package:vollect/di.dart' as di;
import 'package:vollect/app/screens/home.dart';
import 'package:vollect/app/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.ServiceLocator.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        title: 'Vollect',
        debugShowCheckedModeBanner: kDebugMode,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          // ----------------------
          // TextField Global Theme
          inputDecorationTheme: InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            filled: true,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            floatingLabelStyle:
                TextStyle(fontSize: 16, color: Colors.grey.shade800),
          ),
          // -----------------------
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          // useMaterial3: false,
        ),
        initialRoute: AppRoutes.splash,
        routes: {
          AppRoutes.splash: (context) => const StartScreen(),
          AppRoutes.login: (context) => LoginScreen(
                userController: di.ServiceLocator.userController,
              ),
          AppRoutes.home: (context) => HomeScreen(
                repository: di.ServiceLocator.repository,
              ),
        },
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Future<void> initializer(BuildContext context) async {
    // --------------------------------------------
    // Check for user data and navigate as follows:
    //
    //  * to Credentials Screen if user not found.
    //  * to Home Screen if user found.
    // --------------------------------------------
    final prefs = await SharedPreferences.getInstance();
    if (!context.mounted) return;
    if (prefs.containsKey("User")) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    } else {
      Navigator.of(context).pushReplacementNamed(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => initializer(context));

    return Scaffold(
        bottomSheet: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 15,
          child: const Center(
              child: Text('v$APP_VERSION', style: TextStyle(fontSize: 10))),
        ),
        body: const Center(
            child: CircularProgressIndicator(
          strokeCap: StrokeCap.round,
          strokeWidth: 7,
        )));
  }
}
