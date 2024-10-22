import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program stateless widget',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('ini adalah stateless widget'),
        ),
        body: const Center(
          child: Text('ini halaman utama'),
        ),
        )

      );
  }
}