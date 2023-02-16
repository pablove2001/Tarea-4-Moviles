import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CryptoExchangesMoreInfo extends StatelessWidget {
  final Map map;
  const CryptoExchangesMoreInfo({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${map['name']}'),
        actions: [
          IconButton(
            icon: Icon(Icons.link),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: '${map['url']}'));

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                  content: Center(child: Text('Copied link')),
                  duration: Duration(seconds: 1),
                ));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.network(map['image']),
            title: Text('${map['name']}'),
            subtitle: Text('${map['country']}\n${map['year_established']}'),
          ),
          Text('${map['name']}'),
        ],
      ),
    );
  }
}
