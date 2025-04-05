import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final nom = arguments['nombre'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(
          255,
          165,
          0,
          1,
        ),
        title: Text(nom),
        elevation: 10,
      ),
      body: Card(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.inventory_2),
              title: Text(nom),
              subtitle: const Text('Aca va la descripción'),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.comedera.com/wp-content/uploads/2022/12/Empanada-chilena-de-pollo-shutterstock_478589707.jpg')),
              ),
            )
          ],
        ),
      ),
    );
  }
}