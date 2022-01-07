import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thirteen/widget/icon_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Flutter Animation";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 1.0,
          runSpacing: 2.0,
          children: const [
            IconWidget(
              icon: FontAwesomeIcons.facebookF,
              color: Colors.blueAccent,
            ),
            IconWidget(
              icon: FontAwesomeIcons.twitter,
              color: Colors.lightBlue,
            ),
            IconWidget(
              icon: FontAwesomeIcons.whatsapp,
              color: Colors.greenAccent,
            ),
            IconWidget(
              icon: FontAwesomeIcons.instagram,
              color: Colors.redAccent,
            ),
            IconWidget(
              icon: FontAwesomeIcons.globe,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
