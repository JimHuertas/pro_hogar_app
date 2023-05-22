import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart';
import 'package:pro_hogar_app/model/negocio_model.dart';

import 'package:pro_hogar_app/model/servicio_model.dart';

class ApiProviderProHogar{
  final String url = 'http://localhost:5000/api';

  Future<List<ServicioModel>> fetchServicioList(String type) async{
    if(type == 'get'){
      try {
        Response response = await get(Uri.parse('$url/Servicio'));
        if(response.statusCode == 200){
          final List<dynamic> result = jsonDecode(response.body);
          return result.map((e) => ServicioModel.fromJson(e)).toList();
        }else{
          throw Exception(response.reasonPhrase);
        }
      } catch (e, stacktrace) {
        if(kDebugMode){
          print('Exception occured: $e stackTrace: $stacktrace');
        }
        return [];
      }
    } else{
      return [];
    }
  }

  Future<List<NegocioModel>> fetchNegocioList(String type) async{
    if(type == 'get'){
      try {
        Response response = await get(Uri.parse('$url/Negocio'));
        if(response.statusCode == 200){
          final List<dynamic> result = jsonDecode(response.body);
          return result.map((e) => NegocioModel.fromJson(e)).toList();
        }else{
          throw Exception(response.reasonPhrase);
        }
      } catch (e, stacktrace) {
        if(kDebugMode){
          print('Exception occured: $e stackTrace: $stacktrace');
        }
        return [];
      }
    } else{
      return [];
    }
  }

}