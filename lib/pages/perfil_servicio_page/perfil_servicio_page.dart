import 'package:flutter/material.dart';
import 'package:pro_hogar_app/model/servicio_model.dart';
import 'package:pro_hogar_app/pages/perfil_servicio_page/widgets/custom_image.dart';
import 'package:pro_hogar_app/pages/widgets/custom_buttom.dart';

class PerfilServicioPage extends StatefulWidget {
  final ServicioModel model;
  const PerfilServicioPage({
    super.key,
    required this.model
  });

  @override
  State<PerfilServicioPage> createState() => _PerfilServicioPageState();
}

class _PerfilServicioPageState extends State<PerfilServicioPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              splashColor: Colors.transparent,
              splashRadius: 0.1,
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed:(){}, 
            )],
          backgroundColor: const Color.fromRGBO(31, 34, 53, 1),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(), // Elimina las restricciones de altura
            child: Column(
              children: [
                _avatarInfo(context),
                const SizedBox(height: 30),
                description(context),
                const SizedBox(height: 40),
                rate(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  description(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3), // Desplazamiento de la sombra
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 55,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(31, 34, 53, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Text('Descripción', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight:FontWeight.w500)),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(237, 242, 244, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                '\n\n'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  rate(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3), // Desplazamiento de la sombra
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(31, 34, 53, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(alignment: Alignment.centerLeft, child: Text('Calificación', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight:FontWeight.w500))),
              SizedBox(height: 25),
              Row(children: [
                Container(child: Text('5.0/5.0', style: TextStyle(color: Colors.white, fontSize: 30))),
                SizedBox(width: 10),
                Icon(Icons.star_border, size: 35,color: Colors.white),
                Icon(Icons.star_border, size: 35,color: Colors.white),
                Icon(Icons.star_border, size: 35,color: Colors.white),
                Icon(Icons.star_border, size: 35,color: Colors.white),
                Icon(Icons.star_border, size: 35,color: Colors.white)
              ]),
              SizedBox(height: 5),
              Container(alignment: Alignment.centerLeft, child: const Text('Basado en de 7 opiniones', style: TextStyle(fontSize: 13, color: Colors.white, fontWeight:FontWeight.w500))),
                
            ]),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(237, 242, 244, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                '\n\n'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.'
                'Texto de ejemplo. Este es un texto largo que puede cambiar dinámicamente y ajustar el tamaño del contenedor de abajo.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _avatarInfo(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.60,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(31, 34, 53, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: SafeArea(
        top: true,
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomImage(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding:EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text('Servicio de limpieza del hogar profesional',
                    style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                _favoriteButton()
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Text(widget.model.negocioNombre!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Row(children: <Widget>[
                Icon(Icons.location_on, color: Colors.white,),
                SizedBox(width:20),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.7,
                  child: Text(widget.model.servicioDistrito!, style: TextStyle(color: Colors.white))
                ),
              ])
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Row(children: <Widget>[
                Icon(Icons.business_center_outlined, color: Colors.white,),
                SizedBox(width:20),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.7,
                  child: Text(widget.model.servicioDistrito!, style: TextStyle(color: Colors.white))
                ),
              ])
            ),
            const SizedBox(height: 25),
            CustomButtom(
              backgroundColor: const Color.fromRGBO(217, 4, 41, 1),
              colorText: Colors.white,
              text: 'Cotizar', 
              onPressed: (){}
            )
          ],
        ),
      ),
    );
  }

  _favoriteButton() {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.centerLeft,
        child: Icon(
          (isChecked)
            ? Icons.favorite
            : Icons.favorite_border_outlined,
          size: 40,
          color: (isChecked) ? Colors.white : Colors.red,
        ),
      ),
    );
  }
}