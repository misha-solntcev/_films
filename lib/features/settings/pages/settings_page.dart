import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsArguments {
  const SettingsArguments(this.name);

  final String name;
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.arguments});

  final SettingsArguments arguments;
  static const path = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User: ${arguments.name}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.arrow_back), Text('Back')],
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  SystemChannels.platform
                      .invokeMapMethod('SystemNavigator.pop');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[Icon(Icons.exit_to_app), Text('Exit')],
                )),
          ],
        ),
      ),
    );
  }
}
