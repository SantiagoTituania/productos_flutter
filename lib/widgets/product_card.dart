import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {// permite que sea mas rapida la app
  //const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top:30, bottom: 50),//permite separar las cartas
        width: double.infinity,
        height: 400,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroundImage(),

            _ProductDetails(),

            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag()
            ),
           
            Positioned(//posisiconar widget en la pantalla
              top: 0,
              left: 0,
              child: _NotAvailable()
            ),
          ],
        ),
        //color: Colors.red,// el color con el widget no pueden estar juntos no son compatibles
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
    color:Colors.white,
    borderRadius: BorderRadius.circular(25),
    boxShadow:[
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0,6),
        blurRadius: 10,

      )
    ]
  );
}

class _NotAvailable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "No disponible",
            style: TextStyle(
              color: Colors.white, 
              fontSize: 20
            ),),
        ),
      ),
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.yellow[800],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25))
      ),

    );
  }
}

class _PriceTag extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox (//permite adaptar el widget interno
      fit: BoxFit.contain,// permite que el etxto se adapta al widget - MUY UTIL
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('\$10333333.99', 
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20
          ),)
        ),
      ),
      width: 100,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(25))
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(right: 50),// restandole 50px de la sq inferior derecha
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        //color: Colors.indigo,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Text("Disco Duro G", 
                style: TextStyle(
                  fontSize: 20, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
              ),
            Text("ID del disco Duro", 
              style: TextStyle(
                fontSize: 10, 
                color: Colors.white, 
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration( ) => BoxDecoration(
    color: Colors.indigo,
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), topRight: Radius.circular(25))


  );
}

class _BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),// carga imagen que se desea ver
          image: NetworkImage('assets/jar-loading.gif'), //https://via.placeholder.com/400x300/f6f6f6
          fit: BoxFit.cover,
    
        ),
      ),
    );
  }
}