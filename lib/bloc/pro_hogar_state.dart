part of 'pro_hogar_bloc.dart';

abstract class ProHogarState extends Equatable {
  const ProHogarState();
  
  @override
  List<Object> get props => [];
}

class ProHogarInitial extends ProHogarState{}

class ProHogarLoading extends ProHogarState{}

class ProHogarLoaded extends ProHogarState{
  final List<dynamic> servicioModel;
  const ProHogarLoaded(this.servicioModel);
}

class ProHogarError extends ProHogarState{
  final String? message;
  const ProHogarError(this.message);
}