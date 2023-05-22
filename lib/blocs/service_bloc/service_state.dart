part of 'service_bloc.dart';

abstract class ServiceState extends Equatable {
  const ServiceState();
  
  @override
  List<Object> get props => [];
}

class ServiceInitial extends ServiceState{}

class ServiceLoading extends ServiceState{}

class ServiceLoaded extends  ServiceState{
  final List<dynamic> servicioModel;
  const ServiceLoaded(this.servicioModel);
}

class ServiceError extends ServiceState{
  final String? message;
  const ServiceError(this.message);
}