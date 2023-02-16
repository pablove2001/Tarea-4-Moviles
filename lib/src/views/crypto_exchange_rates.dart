import 'dart:convert';
import 'dart:math';

import 'package:data/src/components/drawer_home.dart';
import 'package:flutter/material.dart';
import 'package:data/src/data/constants.dart';

class CryptoExchangeRates extends StatelessWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGE_RATES)['rates'];
  var keys = jsonDecode(CRYPTO_EXCHANGE_RATES)['rates'].keys.toList();

  CryptoExchangeRates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crypto Exchange Rates')),
      drawer: DrawerHome(),
      body: ListView.separated(
        itemCount: keys.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                    255, 255, Random().nextInt(50) + 140, Random().nextInt(80)),
              ),
              child: Center(
                child: Icon(Icons.attach_money),
              ),
            ),
            title: Text('${exchanges[keys[index]]['name']}'),
            subtitle: Text(
                'Value: ${exchanges[keys[index]]['value']} ${exchanges[keys[index]]['unit']}\nType: ${exchanges[keys[index]]['type']}'),
            trailing: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text(
                          'Link para: ${exchanges[keys[index]]['name']}')));
              },
              icon: Icon(Icons.link),
            ),
          );
        },
      ),
    );
  }
}
