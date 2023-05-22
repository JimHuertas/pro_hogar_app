part of 'negocio_bloc.dart';

abstract class NegocioState extends Equatable {
  const NegocioState();
  
  @override
  List<Object> get props => [];
}

class NegocioInitial extends NegocioState {}
