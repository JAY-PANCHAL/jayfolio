import 'package:flutter/material.dart';
import 'package:flutter_moving_background/enums/animation_types.dart';
import 'package:flutter_moving_background/flutter_moving_background.dart';
import 'app.dart';
import 'src/configure_web.dart';
import 'src/json_service.dart';
import 'src/theme/config.dart';
import 'src/theme/custom_theme.dart';

void main() {
  configureApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
    jsonService.init();
    jsonService.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return JSONService.hasLoaded == true
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: currentTheme.currentTheme,
            home:  MovingBackground(
              animationType: AnimationType.translation,
              backgroundColor: currentTheme.isDarkTheme
                  ? Colors.black
                  : Colors.white,
              duration: const Duration(seconds: 10),
              circles: const [
                MovingCircle(color: Colors.red ),
                MovingCircle(color: Colors.orange),
                MovingCircle(color: Colors.yellow),
                MovingCircle(color: Colors.green),
                MovingCircle(color: Colors.blue),
                MovingCircle(color: Colors.indigo),
                MovingCircle(color: Colors.purple),
              ],

                child: const App(),
          ))
        : const Center(child: CircularProgressIndicator());
  }
}
/*
import 'package:flutter/material.dart';
import 'package:flutter_moving_background/enums/animation_types.dart';
import 'package:flutter_moving_background/flutter_moving_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Moving  Background',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
          useMaterial3: true,
        ),
        home: const App());
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MovingBackground(
          animationType: AnimationType.translation,
          backgroundColor: darkMode ? Colors.black87 : Colors.white,
          circles: const [
            MovingCircle(color: Colors.purple),
            MovingCircle(color: Colors.deepPurple),
            MovingCircle(color: Colors.orange),
            MovingCircle(color: Colors.orangeAccent),
            MovingCircle(color: Colors.white12),
          ],
          child: Center(
            child: Card(
              color: Colors.white.withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "M O V I N G ",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Text("B a c k g r o u n d "),
                    Container(
                      margin: const EdgeInsets.all(10),
                      color: Colors.white,
                      width: 300,
                      height: 1,
                    ),
                    const TextField(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Dark Mode:"),
                        Switch(
                            value: darkMode,
                            onChanged: (v) => setState(() => darkMode = v)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}*/
