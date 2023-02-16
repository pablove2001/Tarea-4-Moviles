import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Crypto Exchanges'),
            subtitle: const Text('Home Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            title: const Text('Crypto Trending'),
            subtitle: Text('Top 7'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/crypto_trending');
            },
          ),
          ListTile(
            title: const Text('Crypto Exchange Rates'),
            subtitle: Text('Cryptos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/crypto_exchange_rates');
            },
          ),
        ],
      ),
    );
  }
}
