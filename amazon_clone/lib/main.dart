import 'package:amazon_clone/constants/global_variables.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Amazon Land',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme:
              const ColorScheme.light(primary: GlobalVariables.secondaryColor)),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            title: const Text("Hello."),
          ),
          body: Column(
            children: [
              const Center(child: Text('Amazon Clone Demo')),
              ElevatedButton(onPressed: () {}, child: const Text("Click Me"))
            ],
          )),
    );
  }
}
