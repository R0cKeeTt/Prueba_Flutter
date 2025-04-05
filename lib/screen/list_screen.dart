import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final productos = [
      'producto 1',
      'producto 2',
      'producto 3',
      'producto 4',
      'producto 5',
      'producto 6',
      'producto 7',
      'producto 8',
      'producto 9',
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(
            255,
            165,
            0,
            1,
          ),
          title: const Text('Listado'),
          elevation: 10,
        ),
        body: ListView.separated(
          itemCount: productos.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.inventory),
            title: Text(productos[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              final nombre = productos[index];
              Navigator.pushNamed(context, 'detail',
                  arguments: {'nombre': nombre});
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
