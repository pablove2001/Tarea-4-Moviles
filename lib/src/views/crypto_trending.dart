import 'dart:convert';

import 'package:data/src/components/drawer_home.dart';
import 'package:flutter/material.dart';
import 'package:data/src/data/constants.dart';

class CryptoTrending extends StatelessWidget {
  var trending = jsonDecode(CRYPTO_TRENDING)['coins'] as List;

  CryptoTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Trending'),
      ),
      drawer: DrawerHome(),
      body: ListView.separated(
        itemCount: trending.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(trending[index]['item']['large']),
            title: Row(children: [
              Text('${trending[index]['item']['name']}'),
              Text(
                ' (${trending[index]['item']['symbol']})',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ]),
            subtitle: Text(
                'Price BTC: ${trending[index]['item']['price_btc']}\nMarket cap rank: ${trending[index]['item']['market_cap_rank']}'),
            onTap: () {
              print(trending);
            },
          );
        },
      ),
    );
  }
}
