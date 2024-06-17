import 'package:chitils/pages/download_page.dart';
import 'package:chitils/pages/home_page.dart';
import 'package:chitils/pages/mod_page.dart';
import 'package:chitils/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:root/root.dart';
import 'package:toast/toast.dart';

// GLOBAL STUFF
bool statusRoot = false;
bool statusAvailability = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const defaultTextColor = Colors.white;
    return MaterialApp(
      title: 'Chitils',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: defaultTextColor),
          bodyMedium: TextStyle(color: defaultTextColor),
          bodySmall: TextStyle(color: defaultTextColor),
        ),
      ),
      home: const MainIndex(),
    );
  }
}

class MainIndex extends StatefulWidget {
  const MainIndex({super.key});

  @override
  State<MainIndex> createState() => _MainIndexState();
}

class _MainIndexState extends State<MainIndex> {
  @override
  void initState() {
    super.initState();
    checkRoot();
    checkRootAvailability();
  }

  //Check Root status
  Future<void> checkRoot() async {
    bool? result = await Root.isRooted();
    setState(() {
      statusRoot = result!;
    });
  }

  //Check Root availability
  Future<void> checkRootAvailability() async {
    bool? result = await Root.isRootAvailable();
    setState(() {
      statusAvailability = result!;
    });
  }

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ModPage(),
    DownloadPage(), // TerminalPage()
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    ToastContext().init(context);
    // For nav bar size
    int navBarSize = 130;
    double navBarPadding = (pageWidth / 2.0) - navBarSize;

    const backgroundColor = Color.fromARGB(255, 28, 31, 36);

    return Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          switchInCurve: Curves.fastOutSlowIn,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        extendBody: true,
        backgroundColor: backgroundColor,
        bottomNavigationBar: Padding(
            padding: EdgeInsets.fromLTRB(navBarPadding, 0, navBarPadding, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 28 + 15, 31 + 15, 36 + 15),
              ),
              child: GNav(
                  selectedIndex: _selectedIndex,
                  activeColor: backgroundColor,
                  backgroundColor: Colors.transparent,
                  color: Colors.white,
                  duration: const Duration(milliseconds: 250),
                  hoverColor: const Color.fromARGB(40, 255, 255, 255),
                  mainAxisAlignment: MainAxisAlignment.center,
                  padding: const EdgeInsets.all(10),
                  tabBackgroundColor: Colors.blueGrey,
                  tabBorderRadius: 20,
                  tabMargin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  onTabChange: (index) {
                    if ((statusRoot == false && index == 1) == false) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    } else {
                      Toast.show("YOU ARE NOT ROOTED",
                          duration: 4, gravity: Toast.center);
                    }
                  },
                  tabs: const [
                    GButton(icon: Icons.home),
                    GButton(icon: Icons.window),
                    GButton(icon: Icons.download),
                    GButton(icon: Icons.settings),
                  ]),
            )));
  }
}
