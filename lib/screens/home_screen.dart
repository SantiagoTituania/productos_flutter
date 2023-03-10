import 'package:flutter/material.dart';
import 'package:productos_app/widgets/product_card.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Productos')),
      ),
        body: ListView.builder(
          itemCount: 10, //no sobrepase de 10 elementos
          itemBuilder: ( BuildContext context, int index) => GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'product'),
            child: ProductCard())//ventaja crea los widgets al momento de ingresar a la pantalla
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
      ),
   );
  }
}