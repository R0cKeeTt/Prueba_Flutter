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
    final detailProductos =[
      'Detalle producto 1',
      'Detalle producto 2',
      'Detalle producto 3',
      'Detalle producto 4',
      'Detalle producto 5',
      'Detalle producto 6',
      'Detalle producto 7',
      'Detalle producto 8',
      'Detalle producto 9',
    ];
    final urlImage = [
      'https://www.comedera.com/wp-content/uploads/2022/12/Empanada-chilena-de-pollo-shutterstock_478589707.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/02/flan-de-frutos-rojos.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/Cabracho-en-salsa-de-vino-blanco.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/SVqsA7rs_176f90.jpeg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/Cabracho-en-salsa-de-vino-blanco.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/shutterstock_1137390596.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/costillas-de-cerdo-en-salsa-bbq-asiatica.jpg',
      'https://comedera.com/wp-content/uploads/sites/9/2018/12/PG_CP190821001.jpg?resize=150,150&quality=80',
      'https://comedera.com/wp-content/uploads/sites/9/2025/03/lo-mein-con-pollo-sin-vegetales.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 165, 0, 1),
        title: const Text('Listado'),
        elevation: 10,
      ),
      body: ListView.separated(
        itemCount: productos.length,
        itemBuilder:
            (context, index) => ListTile(
              leading: const Icon(Icons.inventory),
              title: Text(productos[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                final nombre = productos[index];
                final detalle = detailProductos[index];
                final url = urlImage[index];
                Navigator.pushNamed(
                  context,
                  'detail',
                  arguments: {'nombre': nombre, 'detalle': detalle, 'url':url}, 
                );
              },
            ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
