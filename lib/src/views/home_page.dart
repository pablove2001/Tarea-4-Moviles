import 'dart:convert';

import 'package:data/src/components/drawer_home.dart';
import 'package:flutter/material.dart';
import 'package:data/src/data/constants.dart';

class HomePage extends StatelessWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES) as List;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto APP'),
      ),
      drawer: DrawerHome(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(exchanges[index]['image']),
            title: Text('${exchanges[index]['name']}'),
            subtitle: Text(
                '${exchanges[index]['country']}\n${exchanges[index]['year_established']}'),
            trailing: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  '${exchanges[index]['trust_score']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
