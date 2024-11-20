import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moviedb_api/cache_module/helpers/language_helper.dart';
import 'package:moviedb_api/cache_module/logics/cache_theme_logic.dart';
import 'package:provider/provider.dart';

class PrefScreen extends StatefulWidget {
  const PrefScreen({super.key});

  @override
  State<PrefScreen> createState() => _PrefScreenState();
}

class _PrefScreenState extends State<PrefScreen> {

  @override
  Widget build(BuildContext context) {
    CacheLanguage lang = context.watch<CacheThemeLogic>().cacheLang;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purple,
            ]),
          ),
        ),
        title: Text(
          lang.appName,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.share,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(233, 30, 99, 1),
        onPressed: () {},
        label: Row(
          children: [
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToEnglish();
              },
              icon: Text(
                "EN",
                style: TextStyle(color: Colors.white),
              ),
              highlightColor: Colors.purple,
            ),
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToKhmer();
              },
              icon: Text(
                "KH",
                style: TextStyle(color: Colors.white),
              ),
              highlightColor: Colors.purple,
            ),
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToChinese();
              },
              icon: Text(
                "CH",
                style: TextStyle(color: Colors.white),
              ),
              highlightColor: Colors.purple,
            ),
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToKorean();
              },
              icon: Text(
                "KR",
                style: TextStyle(color: Colors.white),
              ),
              highlightColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToLight();
              },
              child: Text(lang.changeToLightMode),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToDark();
              },
              child: Text(lang.changeToDarkMode),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToSystem();
              },
              child: Text(lang.changeToSystemMode),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.home),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.people),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(CupertinoIcons.play_arrow),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.settings),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: Drawer(
        //Codes...
      ),
    );
  }
}
