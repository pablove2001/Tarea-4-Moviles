import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:data/data/constants.dart';

class HomePage extends StatelessWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES) as List;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Hola'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: exchanges.length,
      ),
    );
  }
}
