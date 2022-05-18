import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tanzak_clone/screen/detail/detail_screen.dart';
import 'package:tanzak_clone/screen/home/home_screen.dart';
import 'package:tanzak_clone/screen/purchase/purchase_screen.dart';
import 'package:tanzak_clone/screen/reading/reading_screen.dart';
import 'package:tanzak_clone/screen/search/search_screen.dart';
import 'package:tanzak_clone/screen/search_result/search_result_screen.dart';
import 'package:tanzak_clone/screen/settings/settings_detail/settings_detail_screen.dart';
import 'package:tanzak_clone/screen/settings/settings_screen.dart';
import 'package:tanzak_clone/screen/chart/chart_screen.dart';
import 'package:tanzak_clone/screen/splash/splash_screen.dart';
import 'package:tanzak_clone/utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/DetailScreen': (context) => const DetailScreen(),
        '/SettingsDetailScreen': (context) => const SettingsDetailScreen(),
        '/ReadingScreen': (context) => const ReadingScreen(),
        '/HomePage': (context) => const HomePage(),
        '/SearchResultScreen': (context) => const SearchResultScreen(),
        '/PurchaseScreen': (context) => const PurchaseScreen(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.indigo,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.indigo)),
          )),
      home: const Scaffold(
        body: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  static const String routeName = '/HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPosition = 0;
  final screens = [
    HomeScreen(),
    ChartScreen(),
    SearchScreen(),
    SettingsScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[currentPosition],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPosition,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) => setState(() => currentPosition = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: Strings.home),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: Strings.chart),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: Strings.search),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: Strings.settings)
        ],
      ),
    );
  }
}
