part of 'pro_hogar_bloc.dart';

abstract class ProHogarEvent extends Equatable {
  const ProHogarEvent();

  @override
  List<Object> get props => [];
}

class GetServicioList extends ProHogarEvent{
  
}

class GetNegocioList extends ProHogarEvent{
  
}