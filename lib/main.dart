import 'package:data/src/views/crypto_exchange_rates.dart';
import 'package:data/src/views/crypto_trending.dart';
import 'package:data/src/views/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/crypto_trending': (context) => CryptoTrending(),
        '/crypto_exchange_rates': (context) => CryptoExchangeRates(),
      },
    );
  }
}
