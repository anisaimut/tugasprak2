import 'package:flutter/material.dart';
import 'package:app_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('Sepatu Nike', 850000, 'assets/nikee.jpeg'),
    Item('Sepatu Adidas', 900000, 'assets/adidass3.jpg'),
    Item('Sepatu Puma', 700000, 'assets/puma1.jpeg'),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}