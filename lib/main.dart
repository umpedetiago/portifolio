// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: const String.fromEnvironment('TIAGO'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openWebPage(String url) {
    html.window.open(url, 'New Tab'); //metodo para abrir uma guia web
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _openWebPage(
                "https://github.com/umpedetiago/pokedex_with_cleandart");
          },
          child: const Text(String.fromEnvironment('TIAGO')),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: MenuBar(
                    style: MenuStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.blue.shade700),
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 15)),
                    children: [
                  SubmenuButton(
                    menuChildren: [
                      MenuItemButton(
                        child: const Text("Pokedex"),
                        onPressed: () {
                          _openWebPage(
                              "https://github.com/umpedetiago/pokedex_with_cleandart");
                        },
                      ),
                      MenuItemButton(
                        child: const Text("Clima Tempo"),
                        onPressed: () {
                          _openWebPage(
                              "https://github.com/umpedetiago/app_clima_tempo");
                        },
                      ),
                    ],
                    child: const MenuAcceleratorLabel(
                        String.fromEnvironment("TIAGUEIRA")),
                  ),
                  SubmenuButton(
                    menuChildren: [
                      MenuItemButton(
                        child: const Text("Pokedex"),
                        onPressed: () {
                          _openWebPage(
                              "https://github.com/umpedetiago/pokedex_with_cleandart");
                        },
                      ),
                      MenuItemButton(
                        child: const Text(
                          "Clima Tempo 2",
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          _openWebPage(
                              "https://github.com/umpedetiago/app_clima_tempo");
                        },
                      ),
                    ],
                    child: const MenuAcceleratorLabel("Packages"),
                  )
                ])),
          ],
        ),
      ],
    );
  }
}
