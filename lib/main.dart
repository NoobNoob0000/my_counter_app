import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_counter_app/functions/counter/page/counter_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const CounterPage(),
    );
  }
}
