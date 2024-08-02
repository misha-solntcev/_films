import 'package:films/features/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:films/features/home/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Films',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MyHomePage.path,      
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == MyHomePage.path) {
          return MaterialPageRoute(
            builder: (context) {
              return const MyHomePage(
                title: 'Films',
              );
            },
          );
        }

        if (settings.name == SettingsPage.path) {
          final SettingsArguments arguments =
              settings.arguments as SettingsArguments;
          return MaterialPageRoute(
            builder: (context) {
              return SettingsPage(
                arguments: arguments,
              );
            },
          );
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
