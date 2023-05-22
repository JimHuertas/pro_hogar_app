
import 'package:pro_hogar_app/model/negocio_model.dart';
import 'package:pro_hogar_app/resources/api_provider.dart';

import '../model/servicio_model.dart';

class ApiRepositoryProHogar{
  final _provider = ApiProviderProHogar();

  Future<List<ServicioModel>> fetchServicioList(){
    return _provider.fetchServicioList('get');
  }

  Future<List<NegocioModel>> fetchNegocioList(){
    return _provider.fetchNegocioList('get');
  }
}

class NetworkError extends Error{}