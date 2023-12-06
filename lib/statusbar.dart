import 'package:flutter/material.dart';

class FullScreenApp extends StatelessWidget {
  const FullScreenApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FullScreenPage(),
    );
  }
}

class FullScreenPage extends StatefulWidget {

  const FullScreenPage({super.key});



  @override
  State<FullScreenPage> createState() => ImpsFullScreenPage();

}

class ImpsFullScreenPage extends State<FullScreenPage> {

  ///
  /// The same with `fitsSystemWindows=false` in android
  ///

  void count() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text("This is full screen page"));
  }
}

class ImpsSafeAreaScreenPage extends State<FullScreenPage> {

  ///
  /// The same with `fitsSystemWindows=true` in android
  ///
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(body: Center(
        child: buildLayoutColumn(),
      ))
    );
  }
}

Column buildLayoutColumn() {
  return const Column(
    children: [
      Text('Hi bạn, cho mình làm quen nhé!'),
      Text('Hi bạn, cho mình làm quen nhé!'),
    ]
  );
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return const Text('counter');
  }
}