import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'package:pro_hogar_app/pages/home_page/widgets/card_service.dart';
import 'package:pro_hogar_app/pages/home_page/widgets/drawer.dart';
import 'package:pro_hogar_app/pages/home_page/widgets/seach_app_bar.dart';

import '../../blocs/service_bloc/service_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); //To Open Drawer with Appbar
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    Color color = const Color.fromRGBO(217, 4, 41, 1);
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: color,
          actions: [
            IconButton(
              onPressed: (){
              }, 
              icon: const Icon(Icons.notifications_none)
            )
          ],
          title: const SearchAppBar(),
        ),
        body: BlocProvider(
          create: (context) => ServiceBloc(),
          child: BlocListener<ServiceBloc, ServiceState>(
            listener: (context, state) {
              if(state is ServiceError){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!))
                );
              }
            },
            child: BlocBuilder<ServiceBloc, ServiceState>(
              builder: (context, state) {
                print(state);
                if( state is ServiceInitial){
                  BlocProvider.of<ServiceBloc>(context, listen: false).add(GetServicioList());
                }
                if(state is ServiceLoading){
                  return Center(child: CircularProgressIndicator(color: color));
                }
                else if(state is ServiceError){
                  return Container();
                } else{
                  // return CardService(servicioID: 1, servicioNombre: 'servicioNombre', servicioDistrito: 'servicioDistrito', servicioCategoria: 'servicioCategoria', negocioNombre: 'negocioNombre', onTap: (){});
                  return _listOfService(context, state);
                }
              },
            )
          )
        ),
        drawer: const DrawerHome(),
      ),
    );
  }

  _listOfService(BuildContext context, ServiceState state){
    if(state is ServiceLoaded){
      return ListView.builder(
        itemCount: state.servicioModel.length,
        itemBuilder: (context, index) => CardService(
          item: state.servicioModel[index],
          onTap: (){
            
          },
        )
      );
    }else{
      return Container(
        width: 100,
        height: 100,
        color: Colors.black,
      );
    }
  }
}