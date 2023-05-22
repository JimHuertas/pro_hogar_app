import 'package:flutter/material.dart';
import 'package:pro_hogar_app/model/servicio_model.dart';
import 'package:pro_hogar_app/pages/home_page/widgets/custom_image.dart';

class CardService extends StatefulWidget {
  final ServicioModel item;
  final Function() onTap;
  const CardService({super.key,
    required this.item,
    required this.onTap
  });
  


  @override
  State<CardService> createState() => _CardServiceState();
}

class _CardServiceState extends State<CardService> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 8),
      height: 130,
      // color: Colors.blue,
      child: ListTile(
        leading: const SizedBox(
          height: 200,
          // color: Colors.red,
          child: CustomImage()
        ),
        trailing: _favoriteButton(),
        title: _titleList(),
        onTap: widget.onTap,
      ),
    );
  }

  _titleList() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 200,
            child: Text(
              widget.item.servicioNombre!,
              style: const TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold
              ),
            )
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 200,
            child: Text(
              "${widget.item.negocioNombre!} - ${widget.item.servicioID}",
              style: TextStyle(fontSize: 15 ),
            )
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 200,
            child: Text(
              widget.item.servicioCategoria!,
              style: TextStyle(fontSize: 15, ),
            )
          )
        ],
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
        alignment: Alignment.topCenter,
        child: Icon(
          (isChecked)
            ? Icons.favorite
            : Icons.favorite_border_outlined,
          size: 40,
          color: (isChecked) ? Colors.black : Colors.red,
        ),
      ),
    );
  }
}