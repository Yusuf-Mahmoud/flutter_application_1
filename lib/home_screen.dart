import 'package:flutter/material.dart';
import 'package:flutter_application_1/taps/hadeth/hadeth_tab.dart';
import 'package:flutter_application_1/taps/quran/quran_tab.dart';
import 'package:flutter_application_1/taps/radio/radio_tab.dart';
import 'package:flutter_application_1/taps/sebha/sebha_tab.dart';
import 'package:flutter_application_1/taps/setting/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbeehWidget(),
    IslamicRadioPage(),
    SettingsTab(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/default_bg.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
