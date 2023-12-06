import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {

  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: ShowBottomSheetWidget(),
    );
  }
}
class ShowBottomSheetWidget extends StatelessWidget {
  const ShowBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      Scaffold.of(context).showBottomSheet(
            (context) => buildBottomSheet(),
      );
    });
  }
}

Column buildBottomSheet() {
  return const Column(
    children: [
      Text('Flutter From Zero to Hero',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.blue,
        color: Colors.black45,
        fontFamily: 'bold'
      )),
      Text('Flutter From Zero to Hero')
    ],
  );
}
