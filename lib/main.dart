import 'package:flutter/material.dart';
import 'package:mothod_project/provider/NFTprovider.dart';
import 'package:mothod_project/screen/NFTscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NFTprovider(),
        ),
      ],
      child: const MaterialApp(
        home: NFTscreen(),
      ),
    );
  }
}
